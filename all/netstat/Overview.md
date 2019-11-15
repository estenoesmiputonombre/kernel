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

## Output

Active Internet Connections (TCP, UDP, UDPLite, raw)

### Protocol

The protocol used by the socket:

* tcp

* udp

* udpl

* raw

### Recv-Q

* Established: The count of bytes not copied by the user program connected to this socket.

* Listening: Since Kernel 2.6.18 this column contains the current __syn backlog__.

### Send-Q

* Established: The count of bytes not acknowledged by the remote host.

* Listening: SInce Kernel 2.6.18 this column contains the maximum size of the __syn backlog__.

### Local Address

* Address and port nunmber of the local end of the socket.

* Unless the --numeric(-n) options is specified, the socket address is resolved to its Canonical host name(FQDN), and the port number is translated into the corresponding service name.

### Foreign Address

* Address and port number of the remote end of the socket. 

* Analogous to "Local Address".

### State

* The state of the socket.

* Since there are no states in __raw mode__ and usually used in __UDP__ and __UPDLite__, this column may be left blank.

* Values:

    + `ESTABLISHED` -> The socket has an established connection.

    + `SYN_SENT` -> The socket is actively attempting to establish a connection. 

    + `SYN_RECV` -> A connection request has been received from the network.

    + `FIN_WAIT1` -> The socket is closed, and the connection is shutting down.

    + `FIN_WAIT2` -> Connection is closed, and the socket is waiting for a shutdown from the remote end.

    + `TIME_WAIT` -> The socket is waiting after close to handle packets still in the network.

    + `CLOSE` -> The socket is not being used.

    + `CLOSE_WAIT` -> The remote end has shut down, waiting for the socket to close.  

    + `LAST_ACK` -> The remote end has shut down, and the socket is closed. Waiting for acknowledgement. 

    + `LISTEN` -> The socket is listening for incoming connections. Such sockets are not included in the output unless you specify the --listening (-l) or --all(-a) option.

    + `CLOSING` -> Both sockets are shut down but we still dont have all our data sent.

    + `UNKNOWN` -> The state of the socket is unknown. 

### User

The username or the user id (UID) of the owner of the socket.

### PID/Program name

Slash-separated pair of the process id (PID) and process name of the process that owns the socket. --program causes this column to be included. You will also need superuser privileges to see this information on sockets you dont own. This identification information is not yet available for IPX sockets.

### Timer

xxxx

### Active UNIX domain Sockets

#### Proto
        
The protocol family (usually unix) used by the socket.

#### RefCnt

The reference count (i.e. attached processes via this socket)

#### Flags

The flags displayed in 

* `SO_ACCEPTON` (Displayed as ACC) -> used on unconnected sockets if their correponding processes are waiting got a connect request.

* `SO_WAITDATA` (W)

* `SO_NOSPACE` (N)

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
