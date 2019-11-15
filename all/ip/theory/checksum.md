# Checksum

## Error detection in Computer Networks

Error detection is a technique that is used to check if any error
occurred in the __data during the transmission__.

### Schema
```             
                ----------------------------
               | Error Detection Techniques |
                ----------------------------
                              |
              --------------------------------------------------------------
             |                             |                                |
             v                             v                                v
 ---------------------------    -------------------------------        ----------
| Single Parity Check (SPS) |  | Cyclic Redundancy Check (CRS) |      | Checksum |
 ---------------------------    -------------------------------        ----------
```

## Method

### Step-1

At sender side:

+ If __m bit__ checksum is used, the __data unit__ to be transmitted is divided into segments of m bits.

+ All the m bit segments are added.

+ The result of the sum is then completed using 1's complemented arithmetic.

+ The value so obtained is called as checksum.

### Step-2

The data along with the checksum value is transmitted to the receiver.

### Step-3 

At receiver side:

+ If m bit checksum is being used, the received data unit is divided into segmentes of m bits.

+ All the m bit segments are added along with the checksum value.

+ The value so obtained is complemented and the result is checked.
