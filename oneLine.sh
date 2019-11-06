#!/bin/bash

i=0; while [ $i -le 100 ]; do echo $i; ((i++)) ;done

i=0; while [ $i -le 100 ]; do j=0; while [ $j -le 1000 ]; do echo -n $j; ((j++)); done; ((i++)); done

for ((i=0; i < 1000; i++)); do for ((j=0; j < 1000; j++)); do echo -n $j; done done

hello() { for i in $(seq 1 $#); do printf "%s\n" ${!i}; done }
