#!/bin/bash

n=2
arr=(one two three)

echo -en "length: ${#arr[@]}\narr[@]: ${arr[@]}\narr[*]: ${arr[*]}\n"

echo -en "using a loop trough arr[@]:\n"
for i in ${arr[@]}; do echo $i; done

echo -en "using a loop trough arr[*]:\n"
for i in ${arr[*]}; do echo $i; done

echo "User: $USER and number $n"
echo 'User: $USER and number $n'
echo "User: $USER and number \$n"

echo "You are using $0 with args \$*: $* or \$@: $@"

echo "name of the file: $(basename --suffix=.sh --zero $(pwd) | sed 's/\x0//g' ), name of the folder: $(dirname --zero $(pwd) | sed 's/\x0//g')"

echo -en "hello\0World\n" | sed 's/\x0/\n/g' # it outputs hello\nworld\n

exit 0
