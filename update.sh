#!/bin/bash

# Update all the metadata information for the Skycoin official Docker images
# just run this script.
#
# This script detects the images from a search in the docker hub, it will 
# process all the images that belongs to the 'skycoin' org

# preserve base path
basepath=$(pwd)

# get the drib.sh file
curl -sLG https://github.com/simelo/repo-info-tools/raw/master/drib.sh -o drib.sh
chmod +x drib.sh

# this is the name of the folder that contains the sub folders
# under base path that holds the list of repositories
lpath="repos"
# remove it to always get a fresh data set
rm -rdf "${lpath}" &>/dev/null

# search for the images in the docker hub
IMAGES=`docker search skycoin | grep -e "^skycoin/.*$" | awk '{print $1}' | xargs`

# list the images for debug
echo "The script detected the following images:"
for image in ${IMAGES} ; do
    echo $image
done

# magic start here.
for image in ${IMAGES} ; do
    # advice about the image we will process
    echo ""
    echo ">>> Processing image '${image}'"

    # get simple image name, without the org part and start to process
    img=`echo $image | awk -F '/' '{print $2}'`
    wf="$basepath/$lpath/$img"
    mkdir -p "$wf"
    ln -s "$basepath/drib.sh" "$wf/"
    cd "$wf"

    # process
    ./drib.sh -a "$image" -f "(^latest.*$)|(^develop.*$)|(^release.*$)|(^arm.*$)|(^dind$)"

    # cleanup
    rm -f drib.sh &> /dev/null

    # erasing the downloaded images to save space
    echo ""
    echo "Pruning all tags for image $image"
    docker images | grep "${image} " | awk '{print $3}' | xargs docker image rm -f
done

# final clean up
cd "$basepath"
rm -f drib.sh &> /dev/null
