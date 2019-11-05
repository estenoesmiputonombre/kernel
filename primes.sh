#!/bin/bash

function prime {
	#echo "Executing the function: ${FUNCNAME} in the program $0"
	if [[ $# -ne 1 ]]; then 
		echo "Error parsing length of the params"
		return 1
	fi
	re='^[0-9]{1,8}$'
	if ! [[ "$1" =~ $re ]]; then
		echo "Error parsing the params"
		return 2
	fi
	value=$1
	middle=$((value/2))
	i=2
	while [ $i -le $middle ] && [ $((value % i)) -ne 0 ]
	do
		((i++))
	done
	if [[ $i -ge $middle ]]; then return 0; else return 1; fi
}

if [[ $(prime 12) -eq 1 ]]; then echo "This is not a prime"; else echo "This is a prime"; fi

