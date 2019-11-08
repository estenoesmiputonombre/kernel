#!/bin/bash

# A script to clean up log files in /var/log

log=/var/log
declare -a files=(messages wtmp)

echo -ne "You are running this program as:\n\tUsername: $USER\n\tUser Id: $EUID\n"

if [[ $EUID -ne 0 ]]; then
    echo -ne "Error trying to execute the script because you are not root\n"
    exit 1
fi

for i in ${files[@]}; do
    if ! [[ -a "$log/$i" ]]; then
        echo -ne "Cleaning the file $log/$i\n"
        cat /dev/null > "$log/$i"
    fi
done

echo -ne "All files that was created are cleaned\n"
