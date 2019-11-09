#!/bin/bash

awk 'BEGIN { print "Don\47t Panic" }'

# Simulating the utility of the command cat
# awk '{ print }' 

# Looking for the word root and print the entery line
echo -ne "Printing the lines that contains the root word\n"
awk '/root/ {print $0}' /etc/passwd

# Printing all the lines that are more than 80 characters:
echo -ne "Printing the lines that has more than 80 characters\n"
awk 'length($0) > 80' /etc/passwd

# Printing the greatest length of the line 
echo -ne "Printing the greatest length of the lines\n"
awk '{ if (length($0) > 80) max=length($0) } END { print max }' /etc/passwd 

# Printing the maximum length of the lines in a file
awk '{if(length($0) > 80) max=length($0)} END { print "Maximum length of the lines in the file is: " max }' /etc/passwd

# Print the lines of a file that are empty
awk 'NF>0' starting.sh

# Print random values 
awk 'BEGIN {for(i=0;i<10;i++) print int(101*rand())}'

# Print the sum of the bytes in a directory
ls -l | awk 'BEGIN {print "Starting the sum"} {x+=$5} END {print "Sum of bytes: " x}'
