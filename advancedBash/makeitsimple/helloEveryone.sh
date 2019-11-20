#!/bin/bash

function sayHello {
	echo "Executing the $FUNCNAME, $0"
	if [[ "$#" -eq 0 ]]; then
		echo "Hello Mr anonymous"
		exit 1
	fi
	for i in $@; do
		echo -en "Hello Mr $i\n"
	done
}

sayHello $@
