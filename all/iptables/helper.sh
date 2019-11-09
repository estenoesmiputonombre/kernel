#!/bin/bash

# What we can do with a packet?
#
# target:
#   DROP
#   ACCEPT
#   LOG
#   SENT
#
# prot:
#   tcp
#   udp
#   icmp
#   all
#
# opt:
#   IP options
#   But it is rarely used
#
# source:
#   Source IP address
#   subnet of the traffic
#   or anywhere
#
# destination:
#   Source IP address
#   subent of the traffic
#   or anywhere
#
# last column is unlabeled and give as more options about the rule

if [ $EUID -ne 0 ]; then
    echo "You have to be a super user"
    exit 87
fi

# or iptables --list-rules
iptables -S

# or iptables --list
iptables -L

# or iptables --list INPUT --verbose: It will display bytes and pkt of each rule
iptables -L INPUT -V

# or iptables --zero INPUT [number]
iptables -Z INPUT 1
