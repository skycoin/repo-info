#!/bin/bash

# Update all the metadata information for the Skycoin official Docker images
# just run this script.
#
# This script loads the info from a file, the file must have a name of a
# image to process per line as if you will make a docker pull to it
# 
# Images must be public available in docker hub
# This is the filename with the images to process:
file="repo-list.txt"

# get the drib.sh file
curl -sLG https://github.com/simelo/repo-info-tools/raw/master/drib.sh -o drib.sh
chmod +x drib.sh

# preserve path
basepath=$(pwd)

# this is the name of the folder that contains the sub folders
# under base path
lpath="repos"

# magic start here.
for image in $(cat "$file" | grep -v "^#" | uniq) ; do
    # skip blank lines
    if [ "$image" == "" ] ; then
        continue
    fi

    # get simple image name, without the org part and start to process
    img=`echo $image | awk -F '/' '{print $2}'` 
    wf="$basepath/$lpath/$img"
    mkdir -p "$wf"
    ln -s "$basepath/drib.sh" "$wf/"
    cd "$wf"

    # process
    ./drib.sh -a "$image"

    # cleanup
    rm -f drib.sh &> /dev/null 
done

# final clean up
cd "$basepath"
rm -f drib.sh &> /dev/null 
