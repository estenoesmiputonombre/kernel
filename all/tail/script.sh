#!/bin/bash

file=practice
text="Hello world"

if ! [ -a "$file" ]; then
    touch "$file"
else 
    rm "$file"
fi

for((i=0;i<100;i++)); do
    echo -ne "$text $i\n" >> "$file"
done
