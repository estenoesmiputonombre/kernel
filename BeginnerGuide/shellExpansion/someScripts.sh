#!/bin/bash

# List all the directories of a file splitted by a new line
entry=$PWD; 

while [[ $(dirname $entry) != "/" ]]; do 
	echo $(basename $entry)
	entry=$(dirname $entry)
done

"$PWD" | sed -e 's:/:\n:g'
