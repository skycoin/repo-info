#!/bin/bash

# Update all the metadata information for the Skycoin official Docker images, just by run this.
#
# This script loads the info from a file, the file must have the following syntax:
#
# <folder under "repos">|<docker_image:tag>
# 
# This is the filename of the 
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
for l in $(cat "$file" | grep -v "^#" | uniq) ; do
    # skip blank lines
    if [ "$l" == "" ] ; then
        continue
    fi

    # split the line
    folder=$(echo $l | cut -d "|" -f1)
    image=$(echo $l | cut -d "|" -f2)

    # prepare to process
    wf="$basepath/$lpath/$folder"
    mkdir -p "$wf"
    ln -s "$basepath/drib.sh" "$wf/"
    cd "$wf"

    # process
    ./drib.sh -a "$image"

    # cleanup
    rm -f drib.sh &> /dev/null 
done

# final clean up
rm -f drib.sh &> /dev/null 
