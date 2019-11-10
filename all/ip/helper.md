# Helper

ip [ OPTIONS ] address { COMMAND | help }

## OPTIONS

### MISCELANEUS

* -V/-version -> displays the version.

## BATCH

* -b[atch] -> Read commands from provided file or standard input and invoke them. First failure will cause termination of ip.

* -force -> Dont terminate ip on errors in batch mode. If it fails, it will return a code not equals 0

### OUTPUT
* -s[tats]|-statistics -> is the same as verbose in other programsd. You can use two times to obtain more verbose output

* -d[etails] -> output more detailed information.

* -o[neline] -> output each record on one line, use the character instead of line feeds.

* -br[ief] -> print only basic information in a tabular format for better readability. This option is currently only supported by `ip address show` or `ip link show`

* -c[olor] -> Use color output.

* -j[son] -> Output results in JSON(Javascript Object Notation)

* -p[retty] -> pretty output format.

* -h[uman[-readable]] -> output statistics with human readable values followed by suffix. (Use it with the option -s[tats]|-statistics)

* -iec -> print human readable rates in IEC units (1Ki=1024)

### FILTER BY FAMILY

* -f[amily] 'fid' -> protocol family identifier: _bridge_, _dnet_, _inet_, _inet6_, _ipx_, or _link_ The default is derived from other command arguments if possible, if not is inet; when using link, no protocol is set

* -4 -> shortcut for `ip -f[amily] inet ...`

* -6 -> shortcut for `ip -f[amily] inet6 ...` 

* -B -> shortcut for `ip -f[amily] bridge ...`

* -O -> shortcut for `ip -f[amily] link ...` this means no protocol and it is a zero value

* -I -> shortcut for `ip -f[amily] ipx ...`

* -D -> shortcut for `ip -f[amily] decnet ...`

* -M -> shortcut for `ip -f[amily] mpls ...`

### MONITOR

* -t[imestamp] -> displays current time when using monitor option.

* -ts[hort] -> like timestamp but in shorter format.

### OTHERS

* -a[ll] -> Executes specified command over all objects, it depends if command support this option.

* -l[oops] 'nn' -> number of loops the `ip address flush` command will attempt, the default is 10. If it is 0, it will loop until it terminates

* -r[esolve] -> resolve addresses to DNS hostnames using the system's name resolver.

* -rc[vbuf]<SIZE> -> Set the netlink socket receive buffer size, defaults to 1MB

* -n[etns]<NETNS> -> Switches ip to the specified network namespace *NETNS*.

## OBJECTS

ip address { *add* | *change* | *replace* } __IFADDR__ dev __IFNAME__ [ LIFETIME ] [ CONFFLAG-LIST ]

ip address *del* __IFADDR__ dev IFNAME [ mngtmpaddr ] 

ip address { *save* | *flush* } [ dev __IFNAME__ ]  [ scope SCOPE-ID ]  [ to PREFIX ]  [ FLAG-LIST ]  [ label PATTERN ]  [ up ]

ip address [ *show* [ dev __IFNAME__ ]  [ scope ] ]
