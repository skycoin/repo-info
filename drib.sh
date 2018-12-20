#!/bin/bash

# Docker Repo-Info Builder (drib)
#
# A scripts to create/update the local metadata of a docker image & repository
# aka: repo-info metadata folders
# 
# Author Pavel Milanes Costa / pavelmc@github.com / stdevPavelmc@github.com
# 
# Parameters are as follows
# 1 - local image name (& optional tag name, will use 'latest' if missing)
# 2 - [optional] remote image name & tag in the registry 
#     (usually the same as the image but can be different in some cases)
# 
# For this script to work the image in the repository must be public
# Watch out! I use the local tag = remote tag. 
# 
# This scripts assumes you are using hub.docker.com services 


# initalize vars
local_image=""
local_tag=""
remote_image=""
remote_tag=""
ripath=$(pwd)
URI=""
image_md=""
token=""
repo_config=$(mktemp)
tags=""
tagsmode=""

# Global constants
readonly REGISTRY_ADDRESS="https://registry.hub.docker.com/v2" 
readonly ENCODING="application/vnd.docker.distribution.manifest.v2+json"

# if you are behind a http proxy uncoment and modify as needed
# export http_proxy="http://localhost:8118/"
# export https_proxy="http://localhost:8118/"

# shot to warn about jq, sed & cut absence on the system
jq --help &> /dev/null
sed --help &> /dev/null
cut --help &> /dev/null

# Main function of the script.
# (local_image_name[:tag], registry_image_name, and URL_registy)
main() {
    # setting the remote address of the repository
    URI="https://hub.docker.com/r/$remote_image"

    # build the README.md
    readme

    # build the remote data
    remote_data

    # build the local data
    local_data


	# all goes well
	echo "All Done, thank you."
}


# Makes sure that we provided (from the cli) enough arguments.
check_args() {
	if [ "$#" == "0" ] ; then
		echo "
Error: One or Two arguments must be provided - $# provided.

Usage follows.

Simple use case:
  $0 <local_image[:tag]> [remote_image[:tag]]

  Where 'local_image' is the only required argument
  * Will assume all tags as 'latest' if not mentioned
  * Will assume remote image in registry has the same name and tag
    as the local image, or you can pass your own.

Search use case:
  $0 -a <repository>
		
  Where 'repository' is the name of a repository with at least one image
  to process, in this case the script will search for all tags on that
  repository and will process them all.

Aborting." >&2
		exit 1
	fi

	##### Arguments parsing to know what use case ######

	### All tags for a repo:
	# $0 -a <repository>
	if [ "$1" == "-a" ] ; then
		# detect tag if passed & strip it from the repository name
		get_image_tag $2 "local"

		# flag to switch
		tagsmode="true"

		# title for the tags/readme.md
		image_md='`'"$local_image"'`'

		#  no more work to do here
		return
	fi

	### Normal operation, one or two arguments

    # detect if we have a second argument
    if [ "$2" != "" ] ; then
        # local != remote, note it to the user
        echo "Notice: You provided a different name/tag for the registry" >&2

		# set images var
		local_image=$1
        remote_image=$2
    else
        # same name
		local_image=$1
        remote_image=$1
    fi

	# detect the use of tags and fill the vars with it
    get_image_tag $local_image "local"
	get_image_tag $remote_image "remote"

	# title for the README.md
    image_md='`'"$remote_image"'`'

	echo "Ready to process the repo-info for '$local_image => $remote_image'." >&2
}


# Get image tag, it will take the image name and/or tag and set it
# on the correct environment vars
get_image_tag() {
	# local vars
	local image=""
	local tag=""

    if [ "$(echo $1 | grep ':')" == "" ] ; then
        # no tag :latest
        image="$1"
        tag="latest"
    else 
        # has tag
        image="$(
            echo $1 |
            cut -d ":" -f1
        )"
        tag="$(
            echo $1 |
            cut -d ":" -f2
        )"
    fi

	# local or remote
	if [ "$2" == "local" ] ; then
		# process local image
		local_image=$image
		local_tag=$tag
	else
		# process remote image
		remote_image=$image
		remote_tag=$tag
	fi
}


# Build the README.md for the actual data
readme() {
	# Create the README.md
    cat << EOF > $ripath/README.md
# $image_md repo-info

This directory contains additional information about the published artifacts of [the $image_md image]($URI).

-   [the \`remote\` directory](remote/):

   -   Gathered from the Docker Hub/Registry API
   -   Manifest data, platform, layers, exposed ports, dockerfile recipe...
   -   environment variables, dates, etc.

-   [the \`local\` directory](local/):

   -   Inspected from the image on-disk after it is pulled
   -   Image ID, creation date, virtual size, architecture, environment and entry point

EOF
}


# Retrieves the auth token
# It works only for public accessible images
# You must pass:
# 	- repository name (library/ubuntu|skycoin/skycoin)
#	- tag for this repository (latest|develop)
get_token() {
	local image="$1"
	local tag="$2"
	local URI="$REGISTRY_ADDRESS/$image/manifests/$tag"

	# first failed try, to capture real, dervice & scope
	local MANIFEST="`curl -skLG -o /dev/null -D- $URI`"

	# validation
	if [ "$MANIFEST" == "" ] ; then
		echo "Can't get the token information, please check your connectivity" >&2
		exit 1
	fi

	local CHALLENGE="`grep "Www-Authenticate" <<<"$MANIFEST"`"

	# validation
	if [ "$CHALLENGE" == "" ] ; then
		echo "Token info is missing parameters, please check your connectivity" >&2
		exit 1
	fi

	# Check for a valid answer
	if [[ CHALLENGE ]]; then
		IFS=\" read _ REALM _ SERVICE _ SCOPE _ <<<"$CHALLENGE"

		# validation
		if [ "$REALM" == "" -o "$SERVICE" == "" -o "$SCOPE" == "" ] ; then
			echo "Some parameter of the token auth routine is missing, network problems?" >&2
			exit 1
		fi

		local TOKEN="`curl -sLG "$REALM?service=$SERVICE&scope=$SCOPE"`"
		IFS=\" read _ _ _ TOKEN _ <<<"$TOKEN"

		# validation
		if [ ! "$TOKEN" ] ; then
			echo "There is no token on the answer, network problems?" >&2
			exit 1
		fi

		# verbose output
		echo "Got token from: $REALM" >&2

		# Real output
		echo $TOKEN
	else
		# no valid answer
		echo "No valid answer, exit" >&2
		exit 1
	fi
}


# Retrieve the digest for the repository image
# just one argument, the token
get_digest() {
    local image="$1"
	local tag="$2"
	URI="$REGISTRY_ADDRESS/$image/manifests/$tag"

	# get manifest
	local manifest=$(
		curl -sLG \
		--header "Accept: $ENCODING" \
		--header "Authorization: Bearer $token" \
		"$URI"
	)

	# validation
	if [ "$?" != "0" ] ; then
		echo "Can't get the JSON digest for this image, check the network?" >&2
		exit 1
	fi

	# parse output
	digest=$(echo $manifest | jq -r '.config.digest')

	# validation
	if [ "$digest" == "" ] ; then
		echo "Oops! no valid digest for this image, did you write it right?" >&2
		exit 1
	fi

	# verbose
	echo "Get remote digest: $digest" >&2

	# real output
	echo $digest
}


# Retrieves the image configuration from a given digest.
# See more about the endpoint at:
# https://docs.docker.com/registry/spec/api/#pulling-a-layer
# will put data in a local file 
get_image_configuration() {
    local image="$1"
	local digest="$2"
	local token="$3"
	local URI="$REGISTRY_ADDRESS/$image/blobs/$digest"

	curl -sLG --header "Accept: $ENCODING" \
		--header "Authorization: Bearer $token" \
		"$URI" > $repo_config

	# validation
	if [ ! -s "$repo_config" ] ; then
		echo "Can't get image config from registy, check the network?" >&2
		exit 1
	fi

	# verbose
	echo "Got image config" >&2

}


# Parse the obtained data
# the output that will be put in $tag.md in the remote directory
parse_remote_data() {
	# defaults
	local image="$1"
	local tag="$2"
	local digest="$3"

	# verbose
	echo "Parsing remote data to ./remote/$tag.md" >&2

	# parsing...
	os=$(
		cat $repo_config |
		jq -r '.os'
	)

	arch=$(
		cat $repo_config |
		jq -r '.architecture'
	)

	layers=$(
		cat $repo_config |
		jq -r '.rootfs.diff_ids' |
		grep ':' |
		cut -d '"' -f2
	)

	ports=$(
		cat $repo_config |
		jq -r '.container_config.ExposedPorts' |
		grep ':' |
		cut -d '"' -f2
	)

	dockerfile=$(
		cat $repo_config |
		jq -r '.history | .[] | .created, .created_by' |
		sed s/"\/bin\/sh -c #(nop) "/""/g |
		sed -E s/"(^20.*-.*Z)"/"# \1"/g |
		sed -E s/"[ \t]{2,}"/" "/g
	)

	# default output
	echo '# `'"$image:$tag"'`'
	echo ""
	echo '```console'
	echo "$ docker pull $image@$digest"
	echo '```'
	echo ""
	echo '- Manifest MIME: `'"$ENCODING"'`'
	echo ""
	echo "- Platform: "
	echo "	- $os, $arch"
	echo ""
	echo "- Layers:"
	for l in $layers ; do
		echo "	- $l" 
	done
	echo ""
	echo "- Exposed Ports:"
	for p in $ports ; do
		echo "	- $p" 
	done
	echo ""
	echo '```dockerfile'
	echo "$dockerfile"
	echo '```'
	echo ""
}


# build the remote data and put it on where it belongs
get_remote_data() {
	# The hard work goes here
	token=$(get_token $remote_image $remote_tag)
	digest=$(get_digest $remote_image $remote_tag)
	get_image_configuration $remote_image $digest $token

	# parse the obtained data
	parse_remote_data $remote_image $remote_tag $digest

    # erase trash
    rm $repo_config
}


# Create the remote structure and get the data out
remote_data() {
    # check if the remote directory is not there to create it
    if [ ! -d $ripath/remote ] ; then
        mkdir $ripath/remote
    fi

	# User feedback
	echo "Getting remote info..." >&2

	# output to file
    get_remote_data > "$ripath/remote/$remote_tag.md"

	# User feedback
	echo "Done remote." >&2
}


# Parse the data from the local image and get it out
parse_local_data() {
	local image=$1
	local tag=$2

	# verbose
	echo "Parsing local data to ./local/$tag.md" >&2

    echo '# `'"$image:$tag"'`'

    # get the virtual size of the image
    size="$(
	    docker inspect -f '{{ .VirtualSize }}' "$image:$tag" | 
        awk '{
            oneKb = 1000;
            oneMb = 1000 * oneKb;
            oneGb = 1000 * oneMb;
            if ($1 >= oneGb) {
                printf "~ %.2f Gb", $1 / oneGb
            } else if ($1 >= oneMb) {
                printf "~ %.2f Mb", $1 / oneMb
            } else if ($1 >= oneKb) {
                printf "~ %.2f Kb", $1 / oneKb
            } else {
                printf "%d bytes", $1
            }
        }'
    )"

    # build the info and put it out
    docker inspect -f '
## Docker Metadata

- Image ID: `{{ .Id }}`
- Created: `{{ .Created }}`
- Virtual Size: '"$size"'
    (total size of all layers on-disk)
- Arch: `{{ .Os }}`/`{{ .Architecture }}`
{{ if .Config.Entrypoint }}- Entrypoint: `{{ json .Config.Entrypoint }}`
{{ end }}{{ if .Config.Cmd }}- Command: `{{ json .Config.Cmd }}`
{{ end }}- Environment:{{ range .Config.Env }}{{ "\n" }}    - `{{ . }}`{{ end }}' "$image:$tag"

    echo ""
}


# build the local data and put it on where it belongs
get_local_data() {
	# verbose
	echo "Pulling the image from docker hub" >&2

    # pulling the image if not local
    docker pull $local_image:$local_tag >&2

	# parse the data
	parse_local_data $local_image $local_tag
}


# Create/update the local structure
local_data() {
    # check if the local directory is not there to create it
    if [ ! -d $ripath/local ] ; then
        mkdir $ripath/local
    fi

	# User feedback
	echo "Getting local info..." >&2

	# output to file
    get_local_data > "$ripath/local/$local_tag.md"

	# User feedback
	echo "Done local." >&2
}


# Get all tags from a repository and return it as a string
get_all_tags() {
	local repository=$1

	# get the tags from docker hub
	json_tags=$(
		curl -sL "https://registry.hub.docker.com/v2/repositories/$repository/tags/" |
		jq '.results[].name' |
		tr "\n" " " |
		tr -d '"'
	)

	# return them
	echo $json_tags
}


# create file tags.md listing all tags found.
create_tags_md() {
	local tags="$1"
	local file="tags_listing.md"

	echo "
# Tag listing for the repository $image_md

## This are the tags we keep track of:
" > $file

	for t in $tags ; do
		echo "-	['$t'](./remote/$t.md)" >> $file
	done

	echo "" >> $file
	echo "# End of file " >> $file
}


# Detect and process all tags for a given repository
# It will create a file named tags.md in the base folder
process_all_tags_for() {
	local image="$1"

	# get all tags
	tags=$(get_all_tags $image)

	# Create the file if one or more tags are found
	if [ "$tags" != "" ] ; then
		echo "Found the following tags:" >&2
		echo "TAGS: $tags" >&2

		# Output a tags listing file
		create_tags_md "$tags"

		# setting default vars
		local_image="$image"
		remote_image="$image"

		# process
		for t in $tags ; do
			echo "Processing tag: $t"

			# set tags variation
			remote_tag=$t
			local_tag=$t

			# doit
			main
		done
	else
		# warn and terminate
		echo "Sorry no tags found for your passed repository, please check." >&2

		# teminate
		exit 1
	fi


}

# Check the passed arguments
check_args "$@"

# Switch on the script case to run desired actions
if [ "$tagsmode" == "true" ] ; then
	# local_image has the repository name (tag stripped)
	# call the procedure to get and process all tags
	process_all_tags_for $local_image
else
	# normal operation with just one repository/image
	main
fi
