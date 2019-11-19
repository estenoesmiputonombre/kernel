# Intro

Linux is a member of the large family of Unix-like operating systems.

Unix-like kernels:

+ FreBSD

+ NetBSD

+ OpenBSD

Linux supports a lot of features of Unix-like OS:

* virtual memory

* virtual filesystem

* lightweight processes

* Unix signals

* SVR4 interprocess comunications

* Support for Symmetric Multiprocessor (SMP) systems

* so on...

## Linux features

### Schema

### Monolithic kernel

It is a large, complex do-it-yourself program, composed of several logically different components.

In this is quite conventional; most Unix variants are monolithics.

Exceptions:

* Apple Max OS

* GNU Hurd operating systems

both derived from the Carnegie-Mellon's Mach, which follow __microkernel__ approach.

### Compiled and statically linked traditional Unix Kernels

Most modern kernels can **dynamically** __load__ and __unload__ some portions of the kernel code(typically, device drivers), which are usually called __modules__

Among the main commercial Unix variants, only:

* SVR4.2

* Solaris kernels

have a similar feature.

### Kernel threading

A __kernel thread__ is an executiong context that can be __independently__ scheduled; It may be associated with a **user program**, or it may run only some **kernel functions**.

Context switches between __kernel threads__ are usually __much less expensive__ than context switches between __ordinary processes__, because the **former** usually operate on a __common adderss space__.

Some Unix kernels:

* Solaris

* SVR4.2/MP

are a set of kernel threads.

## Notes

* GPL -> General Public License

* POSIX -> Portable Operating System Interface for X

* API -> Application Programming interface

* SVR4 -> System V Release 4
