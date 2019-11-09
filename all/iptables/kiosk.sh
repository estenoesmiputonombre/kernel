#!/bin/bash

if [ $EUID -ne 0 ]; then
    echo "You have to be super user to execute the script"
    exit 87
fi

iptables --append OUTPUT --protocol tcp --destination ubuntu.com --jump ACCEPT
iptables --append OUTPUT --protocol tcp --destination ca.archive.ubuntu.com --jump ACCEPT
iptables --append OUTPUT --protocol tcp --destination example.com --jump DROP
iptables --append INPUT --protocol tcp --destination-port 22 --source 10.0.3.1 --jump ACCEPT
iptables --append INPUT --protocol tcp --destination-port 22 --source 0.0.0.0/0 --jump DROP
