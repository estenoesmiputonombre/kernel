# IPv4

## Schema

```
|_______ 8 bits___________|__________8 bits__________|__________8 bits__________|_________8 bits___________|
|  Version  |Header length|      Type Of Service     |                     Total length                    |
|           |     (IHL)   |          (TOS)           |                                                     |
|-----------|-------------|--------------------------|-----------------------------------------------------|
|                      Identifier(ID)                |    Flags    |            Fragment Offset(DF bit)    |
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

    + This number is useful during the reassembly of fragmented datagrams.

    + It helps to identify to which IP datagram, the fragmented datagram belongs to.

* Some experimental work has suggested using the ID field for other purposes, such as for adding packet-tracing info to datagrams in orther to help trace back datagrams with __spoofed source address__.

## Flags

* Three bit field.

* Used to control or identify fragments.

* Order (from high order to low):

    + bit 0: Reserved; must be zero.

    + bit 1: Dont Fragment (DF)

    + bit 2: More Fragments (MF)

### Dont fragment

* When an IP datagram has its DF flag set to 1, intermediate devices are not allowed to fragment it. If it needs to travel across a network with a MTU(Maximum Transmission Unit) smaller that datagram length will have to be dropped.

* If the packet is droppedm it will send back a ICMP(Internet Control Message Protocol) Desination Unreachable.

### More fragments

* if it is set to 1, there are more fragments of the datagram.

* if it is set to 0, there are not more fragments of the packet.

## Fragment Offset

* Measured in units of 8 bytes blocks

* 13 bits long

* Specifies the offset of a particular fragment relative to the beginning of the original unfragmented IP datagram.

* The first argument has an offset of zero.

* Maximum: (2^13-1)x8 = 65,528 bytes which would exceed the maximum IP packet length of 65,535 bytes with the header length included (65,528+20=65,548 bytes > 65,535 bytes)

### Scaling Factor

* In IPv4 header, the total length field comprises of _16 bits_

* Total length = Header length + Playload length.

* Minimum header length is 20 bytes (5 rows)

* So, MAX = 2^16 - 20

* In worst case, a datagram containing 2^16 - 20 bytes of data might be fragmented in such a way that the last fragmented datagram contaisn only 1 byte of data.

* Then: (2^16-20) ~= 2^16 -21 ~~= 2^16

* The fragment offset value 2^16 cannot be represented, because it consist of 13 bits.

* To represent 2^16 we use the concept os Scaling Factor.

* 2^16 / 2^13 = 8

## Time To Live(TTL) 

* 8 bit field.

* Maximum time that the datagram is allowed to reamin in the internet system.

* The datagram makes **hops** when they go from one device to another. 

    + If TTL is greater than zero, it can continue.    

    + If TTL equals 0 and the last device is not the destination, then the packet is dropped

    + If TTL equals 0 and the last device is the destination, then the packet is accepted

## Protocol

* 8 bit field.

* It tells the network layer at the destination host to which protocol the IP datagram belongs to.

* Protocol number:

    + ICMP(Internet Control Message Protocol) -> 1

    + IGMP(Internet Group Management Protocol) -> 2

    + TCP(Transport Control Protocol) -> 6

    + UDP(User Datagram Protocol) -> 17

## Header Checksum

* 16 bit field

* It contains the checksum value of the entire header.

* The checksum value is used for error checking of the header.

* At each __hop__:
   
    + The header checksum is compared with the value contained in this field.

    + If header checksum is found to be mismatched, then the datagram is discarded.

    + Router updates the checksum field whenever it modifies the datagram eheader.

* This field that may be modified are:

    + TTL(Time To Live)

    + Options

    + Datagram Length

    + Header Length

    + Fragment Offset

* Computation of header checksum includes IP header only.

* Errors in the data field are handled by the encapsulated protocol.

## Resources

* [gateway](https://www.gatevidyalay.com/ipv4-ipv4-header-ipv4-header-format/)

* [wordpress](https://advancedinternettechnologies.wordpress.com/ipv4-header/)

