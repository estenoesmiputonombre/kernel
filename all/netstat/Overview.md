# Netstat

Print network connections, routing tables, interfaces statistics,
masquerade connections, and multicast memberships.

## Notes

* This program is mostly obsolete.

* `netstat` is `ss`

* `netstat -r` is `ip route`

* `netstat -i` is `ip -s link`

* `netstat -g` is `ip maddr`

## Usage

`netstat [-vWeenNcCF] [<Af>] -r`

`netstat {-V|--version|-h|--help}`

`netstat [-vWnNcaeol] [<Socket> ...]`

`netstat { [-vWeenNac] -i | [-cnNe] -M | -s [-6tuw] }`

## Description

Netstat prints info about the __Linux Networking Subsystem__.

* (none) displays a list of open sockets. If dont specifie any address families, then the active sockets of all configured address families will be printed.

* --route, -r -> Kernel routing tables. `man route(8)`. `netstat -r` and `route -e` produce the same output.

* --groups, -g -> Multicast group membership information for IPv4 and IPv6.

* --interfaces, -i -> Table of all network interfaces.

* --masquerade, -M -> List of masqueraded connections.

* --statistics, -s -> Summary statistics for each protocol.

## Options

* --verbose, -v -> Being verbose to help the user.

* --wide, -W -> Dont truncate IP addresses by using output as wide as needed. This is optional for now to not break existing scripts.

* --numeric, -n -> Show numerical addresses instead of trying to determinate symbolic host, port or user names.

* --numeric-hosts -> Show numerical host addresses but does not affect the resolution of port or user names.

* --numeric-ports -> Show numerical port numbers but does not affect the resolution of host or user names.

* --numeric-users -> Show numerical user IDs but does not affect the resolution of host or port names.

* --protocol=family, -A ->

    + family is a comma separated list of address family keywords.

    + families: Review the bottom page.

* --continuous, -c -> print selected info every second continuously

* --extend, -e -> Display additional information. Use this option twice for maximum detail.

* --timers, -o -> Include information related to networking timers.

* --program, -p -> Show the PID and name of the program to which each socket belongs.

* --listening, -l -> Show only listening sockets. (These are omitted by default).

* --all, -a -> Show both listening and non-listening sockets. With the --interfaces option, show interfaces that are not up.

* -F -> Print routing information from the FIB(Forwarding Information Base). (Default)

* -C -> Print routing information from the route cache.

## Families

* __inet__ same as --inet|-4

        + Includes __raw__

        + __udp__

        + __udplite__

        + __tcp__ protocol sockets.

* __inet6__ same as --inet6|-6

* __unix__ same as --unix|-x

* __ipx__ same as --ipx

* __ax25__ same as --ax25

* __netrom__ same as --netrom

* __ddp__ same as --ddp

* __bluetooth same as --bluetooth

        + Includes l2cap

        + rfcomm protocol sockets
