#!/bin/bash

command="lsb_release"

echo -ne "This command means: Linux Standard Base release\n"

# or lsb_release -h
echo -ne "Help of the command $command\n$(lsb_release --help)\n"

# or lsb_release -v
echo -ne "If we execute the command with the param --version, we can obtain a error message that refers to 'No LSB modules are available'.\n"
echo -ne "It means that the package lsb_core is missed. Executing:\n$(lsb_release --version)"

if [[ -a /bin/grep ]] || [[ -a /usr/bin/grep ]]; then 
    echo -ne "The grep command is installed\n"
    if [[ $(echo -n "$(lsb_release --version)" | grep --count 'No LSB modules') -eq 1 ]]; then
        echo -ne "Installing the lsb-core modules to eliminate the persistent error\n"
        sudo apt-get install -y lsb-core 
    fi
fi

# or lsb_release -c
echo -ne "If we need to know the codename of the system, we can use --codename param:\t$(lsb_release --codename)\n"

# or lsb_release -i
echo -ne "To know the id of the contributor, we can use the param --id:\t$(lsb_release --id)\n"

# or lsb_release -a
echo -ne "To know all the info, we can use the param --all:\t$(lsb_release --all)\n"

# or lsb_release -s
echo -ne "To output in a short format, we can use the param --short:\n$(lsb_release --short --all)\n"

# or lsb_release -r
echo -ne "To know the release, use the param --release:\t$(lsb_release --release)\n"

# or lsb_release -d
echo -ne "To know the description, use the param --description:\t$(lsb_release --description)"
