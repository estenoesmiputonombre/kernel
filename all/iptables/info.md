# INFO

## Tables

The purpose of a table is to contains chains

* nat

* filter

* mangle

* raw

* security

### Filter

Inside the filter table, we have:

* INPUT -> packets that are incomming to the system

* OUTPUT -> packets that are going outside of the system

* FORWARD -> Packets that are going through the system and will go to other systems

### Nat

Inside the nat table, we have:

* PREROUTING

* POSTROUTING

* OUTPUT

## Chains

*Chains* contains rules. *Rules* can be __terminating__ or __non-terminating__

## ORDER

A packet enters evaluation based on his type (incomming, forwarded, outgoing), then traverses tables and rules
until it encounters a terminating rule.
The order of traversal is as follow:

type: *incomming* 
processing: 

1) nat/PREROUTING 

2) filter/INPUT

type: *forwarded*:

1) nat/PREROUTING

2) filter/FORWARD

3) nat/POSTROUTING

type: *outgoing*:

1) nat/OUTPUT

2) filter/OUTPUT

3) nat/POSTROUTING

### Adding rules to a chain

If we want to add a rule to a chain, we can use:

`sudo iptables --table [nat|filter|mangle|raw|security] --append chain others --jump target`

### Specifiers

* -s/--source ADDR -> packet came from source ADDR

* -d/--destination ADDR -> Packet is going to ADDR

* -i/--in-interface IFACE -> Packet came form interface IFACE

* -o/--out-interface IFACE -> Packet will leave through IFACE

* -m/--match COND -> Packet matches the condition COND

* -p/--protocol PROTO -> Packet uses the protocol PROTO

Remember: CIDR -> Classless Inter-Domain Routing
Remember: ICMP -> Internet Control Message Protocol

About -m/--match COND, we have to revise the man page iptables.
Just for now, we can use 

* `-m state --state STATES` -> NEW, RELATED, ESTABLISHED, INVALID

* `-m limit --limit TIME` -> lets you limit how frequently a given rule is matched.

### Target

* ACCEPT -> Accept this packet. Terminating. Filter table

* DROP -> Ignore this packet. The sender gets not notification. Terminating. Filter table

* REJECT -> Reject this packet, and send an ICMP message back to the sender to indicate that this packet died. Terminating. Filter table.

* SNAT --to-source ADDR -> Change the source address of this packet to ADDR. Terminating. Nat table.

* DNAT --to-destination ADDR -> Change the destination address of this packet to ADDR. Terminating. Nat table

* LOG -> Log this packet to syslog. Non-terminating. All tables

* CHAIN -> Punt processing of this packet to CHAIN. Terminates if CHAIN contains a terminating rule that matches this packet. All tables
