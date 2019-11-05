#!/bin/bash

function doubleSpace {
	echo -e "Executing $0\n"
	if [[ -z "$1" ]]; then
		echo "Error parsing arguments"
		return 1
	fi
	if [[ ! -f "$1" ]]; then
		echo "Error parsing argument because the file doesnt exits"
		return 2
	fi
	sed '/^$/d' $1 | sed G
}

doubleSpace "handyOneLinersForSed.sh"

