# Table

* Filter

* mangle

* nat

* raw

* security(SElinux)

## Filter

* __default__ table.

* perhaps the most __widely__ used table.

* make decisions about whether packets should be allowed to __reach__ its destination. 

## Mangle

* Allows you to alter packets headers in various ways, sush as changing TTL(Time To Live) values.

## Nat

* Allow you to route packets to different hosts on NAT(Network Address Translation) networks by changing the __source__ and __destination__ **addresses** of packets.

* It is often used to allow access to services that cant be accessed directly, because they are on a NAT network.

## Raw

* iptables is a __stateful firewall__, which means that packets are inspected with respect to their "state"

* A packet can be part of a new connection or an existing connection, for example.

* It allows you to work with the packets before the kernel starts tracking its state.

* In addition, you can also exempt certain packets from the state-tracking machinery.

