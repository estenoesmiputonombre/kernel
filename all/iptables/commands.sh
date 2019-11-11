#!/bin/bash

if [ $EUID -ne 0 ]; then
    echo "You have to be super user"
    exit 87
fi

# or sudo iptables -t filter -L -n --line-numbers
# numeric means not resolve DNS 
sudo iptables --table filter --list --numeric --line-numbers

# sudo iptables -A INPUT -s 8.8.8.8 -j ACCEPT
# Add to the table filter, the chain INPUT the target ACCEPT
sudo iptables --table filter --append INPUT --source 8.8.8.8 --jump ACCEPT

# sudo iptables -t filter -D INPUT -s 8.8.8.8 -j ACCEPT
# remove from the table filter, chain INPUT and target ACCEPT
sudo iptables --table filter --delete INPUT --source 8.8.8.8 --jump ACCEPT

# sudo iptables -F INPUT
# It removes a complete chain
sudo iptables --flush INPUT 

sudo iptables --insert INPUT 1 --source 8.8.8.8 --jump ACCEPT
