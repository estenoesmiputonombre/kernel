#!/bin/bash

folder=bigFolder
file=file
amount=10

if ! test -d "$folder" ; then
    mkdir --verbose --parents --mode=777 "$folder"
fi

for i in $(seq 1 1 $amount); do
    if ! test -a "$folder/$file_$i"; then
        > "$folder/$file_$i"
    fi
done
