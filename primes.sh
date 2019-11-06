#!/bin/bash

function prime {
	value=$1
	middle=$((value/2))
	i=2
	while [ $i -le $middle ] && [ $((value % i)) -ne 0 ]
	do
		((i++))
	done
	if [[ $i -ge $middle ]]; then echo 0; else echo 1; fi
}

function parseParams {
	echo "Parsing the arguments using the ${FUNCNAME}"
	if [[ $# -ne 1 ]]; then 
		echo "Error parsing length of the params"
		return 1
	fi
	re='^[0-9]{1,8}$'
	if ! [[ "$1" =~ $re ]]; then
		echo "Error parsing the params"
		return 2
	fi
	param=$1
	if [[ $(prime param) -eq 1 ]]; then echo "This value $1 is not a prime"; else echo "This value $1 is a prime"; fi
}

parseParams $1
