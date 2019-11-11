# Multiplexing

## Definition

Method by which multiple **analog** or **digital** signals are _combined_ into one signal over shared medium.

The **multiplexed signal** is transmitted over a communication channel such as a _cable_. 

The multiplexing _divides_ the capacity of the communication channel into several **logical channels**, one for each message signal or data stream to be transferred.

A reverse process, know as **demultiplexing**, extracts the original channels on the receiver end.

## Nomenclature

**Multiplexer**(MUX) is a device that performs the multiplexing

**Demultiplexer**(DEMUX or DMUX) is a device that performs the reverse

**Inverse Multiplexing**(IMUX) -> break one data stream into several streams, transfer them simultaneously over several communication channels, and recreate the original data stream.

Steps:

* Break one data stream into several streams

* Transfer them simultaneously over several comunication channels

* recreate the original data stream

## I/O multiplexing

processing multiple input/output events from a single event loop, with system calls like *poll* and *select*(Unix).

## Schema

```
Data* = Multiple low data rate signals
$     = single high data rate link

Data*       Multiplexing  Demultiplexing
--------> |\            /| --------->
--------> | \    $     / | --------->
--------> |  | -----> |  | --------->
--------> | /          \ | --------->
--------> |/            \| --------->
```

## Types




