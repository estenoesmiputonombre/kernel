# Overview

## IPC

__IPC__ stands for __Interprocess communication__. Traditionally the term describes different ways of __message passing__ between different processes that are running on some OS.

## Pipes

__Pipes__ were the first widely used form of __IPC__, available both within programs and from the shell.

Problems? The problem with pipe is that they are usable only between processes that have a common ancestor, but this was fixed with the introduction of __named pipes__ or __FIFO__s

## System V message queues

They were added to System V kernels in the earlys 1980.

This can be used between __related__ or __unrelated__ processes on a given host.

## Posix message queues

Were added by the Posix realtime standard.

These can be used between __related__ or __unrelated__ processes on a given host.

## Remote Procedure Calls (RPCs)

Appear in the mid-1980s as a way of calling a function on one system(server) from a program on another system(client), and was developed as an alternative to explicit network programming.
