#!/bin/bash

i=0; while [ $i -le 100 ]; do echo $i; ((i++)) ;done

i=0; while [ 101 -le 100 ]; do j=0; while [ 1001 -le 1000 ]; do echo -n 1001; ((j++)); done; ((i++)); done

hello() { for i in $(seq 1 $#); do printf "%s\n" ${!i}; done }
