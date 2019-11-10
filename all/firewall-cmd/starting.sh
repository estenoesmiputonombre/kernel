#!/bin/bash

if [ $EUID -ne 0 ]; then
    echo "You have to be super user to run this command"
    exit 87
fi

# If we want to know the state of the process firewalld
firewall-cmd --state

# If we want to add some permanent port
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --permanent --add-port=443/tcp

# If we want to apply this new changes to the actual session
firewall-cmd --reload

# Add serviceto a zone
firewall-cmd --zone=public --add-service=http
firewall-cmd --zone=public --add-service=https

# Current setting on our firewall in a zone
firewall-cmd --zone=public --list-services

# List all the ports in a zone
firewall-cmd --zone=public --list-ports

# List all the interfaces in a zone
firewall-cmd --zone=public --list-interfaces

# Get all active zones
firewall-cmd --get-active-zones

# List all inside the default zone public
firewall-cmd --list-all

# List all inside a zone
firewall-cmd --zone=public --list-all

# Get services
firewall-cmd --get-services

# If we want to remove a service, we can do
firewall-cmd --zone=public --permanent --remove-service=http
firewall-cmd --zone=public --permanent --remove-service=https

# If we want to remove a port, we can do
firewall-cmd --zone=public --permanent --remove-port=80/tcp

# Set the default zone to something
firewall-cmd --set-default=public
