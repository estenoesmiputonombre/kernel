#!/usr/bin/env bash

# We can display the current directory using the pwd command
echo "This is the actual directory: "
pwd

# If we are not sure if we are in a symbolic link, we can use the option -P to print only the hard link
echo "This the actual directory using hard links: "
pwd -P

# If we change the value of the Environment variable PWD to another one that is not the same that the actual directory,
# we can test if the value of the variable is the same as the prompted directory in the shell.
echo "This is the actual directory equalling \$PWD and the real actual directory: "
PWD=hello
pwd -L

actual=$(pwd -P)

echo $actual | sed -e 's/\//\n/g'