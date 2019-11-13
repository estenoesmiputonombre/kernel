# Ifconfig

## Name

ifconfig - configure a network interface

## Synopsis

`ifconfig [-v] [-a] [-s] [interface]`

`ifconfig [-v] interface [aftype] options | address ...`

## Address Families

* inet (TCP/IP default)

* inet6 (IPV6)

* ax25 (AMPR Packet Radio)

* ddp (Appletalk Phase 2)

* ipx (Novell IPX)

* netrom (AMPR Packet Radio)

## OPTIONS

* -a -> display all interfaces which are currently available, even if down.

* -s -> display a short list (like netstat -i)

* -v -> be more verbose for some error conditions

* interface -> eth0 for the first Ethernet interface.

* up -> interface to be activated.

* down -> causes the driver for this interface to be shut down.

* [-]arp -> Enable or disable the use of the ARP protocol on this interface

* [-]promisc -> all packets on the network will be received by interface.

* [-]allmulti -> all multicast packets on the network will be received by the interface.

* mtu N -> Maximum Transfer Unit(MTU) of an interface

* dstaddr addr -> Set the remote IP address for a point-to-point link (such as PPP). Obsolete, use the pointopoint keyword instead
