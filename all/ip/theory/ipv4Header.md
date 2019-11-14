# IPv4

## Schema

```
|_______ 8 bits___________|__________8 bits__________|__________8 bits__________|_________8 bits___________|
|  Version  |Header length|      Type Of Service     |                     Total length                    |
|           |     (IHL)   |          (TOS)           |                                                     |
|-----------|-------------|--------------------------|-----------------------------------------------------|
|                      Identifier                    |    Flags    |            Fragment Offset            |
|----------------------------------------------------|-------------|---------------------------------------|
|   Time To Live (TTL)    |         Protocol         |                   Header Checksum                   |
|-------------------------|--------------------------|-----------------------------------------------------|
|                                              Source Address                                              |
|----------------------------------------------------------------------------------------------------------|
|                                           Destination Address                                            |
|----------------------------------------------------------------------------------------------------------|
|                                   Options                                     |         Padding          |
|-------------------------------------------------------------------------------|--------------------------|
```

## Version

* The first header field in an IP packet is the four-bit version field.

* The Version field indicates the format of the internet header.

* Values: 0100 to indicate IPv4 and 0110 to indicate IPv6

## Header Length or Internet Header Length(IHL)

* This field specifies the size of the header(coincides with the offset to the data)

* Minimum value: 5 x 32 bits = 160 bits = 20 bytes

* Maximum value: 15 x 32 bits = 480 bits = 60 bytes

## Type Of Service (TOS)

* Now known as DSCP(Differentiated Services Code Point).

* Carry information to provide Quality of Service(QoS) features.

* New technologies are emerging that require real-time data streaming and therefore make use of DSCP,

* Examples: VoIP(Voice over IP)

### Schema TOS

```
   BIT   0     1      2            3             4              5                6                7
      --------------------------------------------------------------------------------------------------
     |   P  |  P   |  P   |        D      |      T     |        R      |         C       |        O     |
     |--------------------|-----------------------------------------------------------------------------|
     |   0     0      0   |  |     0      | |    0     |  |     0      |  |      0       |  |     0     |
    /                     / /            / /           / /             / /               / /            /
   /                     / /            / /           / /             / /               / /            /
  /                     / /            / /           / /             / /               / /            /
 /                     / /            / /           / /             / /               / /            /
|----------------------||------------| |------------| |-------------| |---------------| |------------|
| Precedence           || Delay      | | Throughput | | Reliability | | Monetary Cost | | Reserved.  |
|                      || 0 Normal   | | 0 Normal   | | 0 Normal    | | 0 Normal      | | Always set |
| 000 Routine          || 1 Minimize | | 1 Maximize | | 1 Maximize  | | 1 Minimize    | | to zero.   |
| 001 Priority         | ------------   ------------   -------------   ---------------   ------------
| 010 Immediate        | \                                                           /
| 011 Flash            |  \                                                         /
| 100 Flash Override   |   \                                                       /
| 101 CRITIC/ECP       |    \                                                     /
| 110 Internetwork Ctrl|     \                                                   /
| 111 Network Control  |      \                                                 /
 ----------------------          -----------------------------------------------
                                |           1111 = Maximize Security            |
                                 -----------------------------------------------
```                                 

### Schema DSCP & ECN

```
    Bit       0      1      2      3      4       5             6      7                                         
        -------------------------------------------------|---------------|
       |        Differentiate Services Code Point        |      ECN      |
        -------------------------------------------------|---------------|
```

## Explicit Congestion Notification (ECN)

* Allows __end-to-end notification__ of network congestion without dropping packets.

* Is optional and it is used when both __endpoints support it__ and are willing to use it.

* It is only when supported by the underlying network

## Total Length

* This __16-bit field__ defines the entire datagram size, including header and data, in bytes. 

* Minimun: 20 bytes (20 bytes header + 0 bytes data)

* Maximum: 65,535 bytes ( 1111111111111111(2 )

## Identification (ID)

* Primarly used for uniquely identifying fragments of an original IP datagram.

    + Each fragmented datagram is assigned the same identification number.

    + This number is useful during the reassemvly of fragmented datagrams.

    + It helps to identify to which IP datagram, the fragmented datagram belongs to.

* Some experimental work has suggested using the ID field for other purposes, such as for adding packet-tracing info to datagrams in orther to help trace back datagrams with __spoofed source address__.

