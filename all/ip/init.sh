#!/bin/bash

if [ $EUID -ne 0 ]; then
    echo "You need to be a super user"
    exit 87
fi

# ip object ...

# Objects can be:
#   * link      : network device.
#   * address   : protocol (IP or IPv6) address on a device.
#   * addrlabel : Label config for protocol address selection.
#   * neighbour : ARP or NDISC cache entry.
#   * route     : routing table entry.
#   * rule      : rule in routing policy database.
#   * maddress  : Multicast address.
#   * mroute    : Multicast routing cache entry.
#   * tunnel    : Tunnel over IP.
#   * xfrm      : Framework for IPsec protocol.

# If we want to show ip address using a version of the IP:
ip -4 address
ip -6 address

# If we want to show an interface in particular
ip address show wlo1
ip address list wlo1

# Only show running interfaces
ip link ls uplist wlo1

# Only show running interfaces
ip link ls up

# If we want to add a IP/mask to an interface
ip address add 192.168.1.34/24 dev wlo1

# If we want to up or down a interface
ip link set wlo1 down
ip link set wlo1 up

# If we want to show the info of the interfaces
ip link show

# If we want to show the main info of the route
ip route show

# Same as the before ?
route -n
netstat -rn
