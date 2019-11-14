# Ethernet(IEEE 802.3)

The most common type of LAN(Local Area Network). It is a technology for wired data networks that links software and/or hardware to each other.

The first version of this technology had a speed of 3 Mbit/s. Current Ethernet protocols allow speed of up to 1000 Mbit/s

## How dows Ethernet works: past and present

* In an Ethernet network, each device is assigned its own address called **MAC address**(48 bits)

* It is used the __baseband method__ and the __multiplexing method__

* **CSMA/CD**(Carrier Sense Multiple Access/Collision Detection) is used for mutual communication.

* Ethernet network topology is logical, a bus or a star.

## Schema

```
     --------------
    | Ready to use |
     --------------
            |        |--------------|
            v        v              |
    ------------------              |
   | Listen to medium |<---------|  |       
    ------------------           |  |
            |                    |  |    ----------------------
            v                    |  |   | Abort and jam signal | 
   --------------------          |  |   |   Wait Backoff Time  |
  | Is the medium free |---------|  |    ----------------------
   --------------------             |
            |                       |
            v                       |
     --------------                 |
    | Replay data  |                |
    | Transmission |                |
     --------------                 |
            |                       |
            v                       |
      ------------                  |
     | Colission? |-----------------|
      ------------
            |
            v
      --------------
     | Transmission |
     |  Complete    |
      --------------
```

## Characteristics

* Relatively inexpensive to install.

* Net transfer rate of 10, 100 or 1000 Megabits per second.

## Flavors

* thick

* thin

* twisted pair

### References

* [Difital Guide IONOS](https://www.ionos.es/digitalguide/servidores/know-how/ethernet-ieee-8023/)
