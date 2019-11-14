# 10-Mbps classic Ethernet

Original specification was the __1976 paper of Metcalfe and Boggs [MB76]__

## Overview

* Data rate: 10 Mbps

* Connections made using a __coaxial cable__.

* Originally, Ethernet was meant to be a __broadcast bus__.

* If two nodes was transmitted at the same time, there was a __collision__.

* Data was transmitted using __Manchester__ encoding.

* __Linear Bus__ structure could be modified with __repeaters__, into an arbitrary __tree structure__.

* CSMA/CD (Carrier Sense, Mulitple Access, Collision Detect): Carrier Sense is a synonym for "signal sense".

* A collision in Ethernets is very common and they are handled with such methods.

## Types

### Versions

Properties:

* There are some __minor electrical__ differences between these.

* There is one rather substantial __packet-format__ difference.

* The __Berkeley Unix trailing-headers packet__ format was used for a while.

Versions:
    
+ version 1 [1980, DEC-Intel-Xerox].

+ version 2 [1982, DIX].

+ IEEE 802.3

### Physical

* thick coax (10BASE-5)

    + The original

    + Include support for __repeaters__. They were __signal amplifiers__ and they might attempt to clean up a noisy signal.

* thin coax (10BASE-2)

    + 

* Twisted Pair (10BASE-T)
    
    + The cheaper Twisted-Pair cabling eventually almos entirely displaced coax, at least for host connection

### Schema

```
                             ------------------
                            | Classic Ethernet |
                             ------------------
                                    |
       --------------------------------------------------------------------
      |                   |                  |                            |
 -----------         -----------        -----------                  -----------
| 10 Base-5 |       | 10 Base-2 |      | 10 Base-T |                | 10 Base-F |
 -----------         -----------        -----------                  -----------
      |                   |                  |                            |
 ---------------     --------------     ---------------------        ---------------
| Bus Topology, |   | Bus topology |   | Star Topology,      |      | Star Topolgy, |
| Thick coaxial |   | Thin coaxial |   | Unshielded twisted, |      | Fiber optic   |
| cable         |   | cable        |   | pair cable          |      | cable         |
 ---------------     --------------     ---------------------        ---------------
```

## Frame format

### Characteristics

Main fields are:

* Preamble: It is 8 bytes starting field that provides __alert__ and __timing pulse__ for transmission.

* Destination Address: It is a 6 byte field containing __physical address__(MAC) of destination address.

* Source Address: It is a 6 byte field containing the __physical address__(MAC) of the sending station.

* Length: It is a 7 byte field that stores the number of bytes in the data field.

* Data: This is a variable sized field carries the data from the upper layers. The maximum size of data field is 1500 bytes.

* Padding: This is added to the data to bring its length to the minimum requirement of 46 bytes.

* CRC(Cyclic Redundancy Check): It contains the error detection information.

### Schema

```
      Preamble      Destination    Source
                     Address       Address      Data+padding        CRC
     ---------------------------------------------------------------------
    |            |              |           |                   |         |
    |  8 bytes   |    6 bytes   |  6 bytes  |  MIN: 46 bytes    | 4 bytes |
    |            |              |           |  MAX: 1500 bytes  |         |
     ---------------------------------------------------------------------
```

## Remainders

* Bus structure:

```
     -       -
    | |     | |
     -       -
     |       |
  --------------------
        |        |
        -        -
       | |      | |
        -        -
```

* tree structure

```
            -
           | |
            -
          /   \
         -     -
        | |   | |
         -     -
       /   \    \
      -    -     -
     | |  | |   | |
      -    -     -
```

* star Structure

```
         -          -
        | |        | |
         -          _
            \    /
             \  /
              --
             |  |
              --
            /    \
           /      \
         -          -
        | |        | |
         -          -
```     

* YBASE-X as example 10BASE-5
    
    + Y is the maximum throughput
    
    + BASE means baseband

    + X is the type of medium used 

* X in the format YBASE-X means:

    + If it is a number, means the maximum segment length of X00m; ex 10BASE-5: segment of 500 m.

    + If it is the letter T, means __Twisted Pair__

    + If it is the letter F, means __Fiber Optic__

### Resources

* [chapter 2 Ethernet](http://intronetworks.cs.luc.edu/1/html/ethernet.html)

* [tutorialpoint](https://www.tutorialspoint.com/classic-ethernet)
