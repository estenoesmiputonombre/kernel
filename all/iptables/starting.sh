#!/bin/bash

if [ $EUID -ne 0 ]; then
    echo "You have to be a super user"
    exit 87
fi

echo "Lets got to learn how to use iptables"

echo "If we want to know the version: use --version or -V"

echo "If we want to display all the rules that we have, we can use 'sudo iptables -L -v'. The -v means verbose and the -L means list"

# Defining a rule means appending it to the list(chain).
# --append/-A to append to the INPUT chain:
# --in-interface/-i <interface> is where we want to filter the traffic
# --protocol/-p <protocol(tcp/udp)> refers to the nerworking protocol of packets you want to filter.
# --source/-s [!] address[/mask](You can use DNS)
# --destination-port/--dport <port> the port on which I want to filter the traffic
# --jump/-j <tarjet> EXTENSIONS

# sudo iptables --append --in-interface <interface> --protocol [tcp|udp] --source address --destination-port <port> --jump <source>

# If we want to add a rule to the chain INPUT, we can use this command
sudo iptables --append INPUT --in-interface lo --jump ACCEPT

# If we want to add rules to the INPUT chain, in ports: 22, 80, 443
sudo iptables --append INPUT --protocol tcp --destination-port 22 --jump ACCEPT
sudo iptables --append INPUT --protocol tcp --destination-port 80 --jump ACCEPT
sudo iptables --append INPUT --protocol tcp --destination-port 443 --jump ACCEPT
