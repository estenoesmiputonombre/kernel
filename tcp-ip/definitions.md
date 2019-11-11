# Definitions

## Protocol

The official procedure or system of rules governing affairs of state or diplomatic occasions.

## Protocol Suite

A collection of related protocol

## Architecture or Reference Model

Design that specifies how various protocols of a protocol suite relate to each other and divide up tasks to be accomplished.

An example is TCP/IP, which implements the Internet architecture and draws its origins from the ARPANET Reference Model(ARM) [RFC0871]

## TCP/IP architecture

Need to provide interconnection of multiple different **packet-switched** computer networks.

This was accomplished using a set of **gateways** (later called routers) that provided a translation function between each otherwise incompatible network.

The resulting "concatenated" network or **catenet**(later called internetwork) would be much more useful, as many more nodes offering a wide variety of services cloud comunicate.
   
```
            Catenet or internetwork
 -------------------------------------------- 
|                                            |
|  ---------  Gateway    Gateway  ---------  |
| | network | --------   ------- | network | |
|  ---------          \ /         ---------  |
|                      -                     |
|  ---------  Gateway / \Gateway  ---------  |
| | network | --------   ------- | network | |
|  ---------                      ---------  |
|                                            |
 --------------------------------------------
```

## Packet Switching

**chunks**(packets) of digital information comprising some number of bytes are carried through the network somewhat independently.

## Multiplexing

Chunks comming from differents sources or senders can be mixed together and pulled apart later.

