#!/bin/bash

folder=startFolder
file=f

set -e

if ! [[ -d $folder ]]; then
    echo -en "Creating the folder '$folder'\n"
    mkdir --parents --verbose --mode=777 $folder
fi

for i in $(seq 1 1 10); do
    if ! [[ -a "${folder}/${file}_$i" ]]; then
       > "${folder}/${file}_$i" 
    fi
done
