#!/bin/bash

# ARP - Address Resolution Protocol

# Purposes:
#   * Display IP address to MAC address resolution info for 
#       neighboring devices.
#   * Clear address mapping entries and set them up manually.
#   * Add an address for which to proxy arp.
#   * Forcefully add permanent entries to the ARP table.

# This will display a verbose output with the default style of output (fixed columns)
# and the devices that have the interface wlo1.
arp --verbose -e --device wlo1 # or arp -v -e -i wlo1

# This will print all the IP without trying to resolve the DNS
arp --verbose -e --numeric # or arp --verbose -e -n
