# Targets

> Some targets are terminating, which means that they decide the matched packet's fate immediatly.
>
> The packet won't be matched against any other rules.
>
> On the other hand, there are non-terminating targets, which keep matching other rules even if a match was found

## Terminating

### ACCEPT

This causes iptables to accept the packet.

### DROP

* iptables drop the packet

* To anyone trying to connect to your system, it would appear like the system didn't even exist.

### REJECT

* iptables reject the packet

* sends a __Connection reset__ packet in case of TCP

* sends a __destination host unreachable__ packet of UDP or ICMP


