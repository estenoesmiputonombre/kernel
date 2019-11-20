# Intro

Linux is a member of the large family of Unix-like operating systems.

The kernel is loaded into RAM when the system boots and contains many critical procedures that are needed for the system operate.

We often use the term "operating system" as a synonym of the kernel

Unix-like kernels that already exists:

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

* Apple Mac OS X

* GNU Hurd operating systems

both derived from the Carnegie-Mellon's Mach, which follow __microkernel__ approach.

### Compiled and statically linked traditional Unix Kernels

Most modern kernels can **dynamically** __load__ and __unload__ some portions of the kernel code(typically, device drivers), which are usually called __modules__.

Among the main commercial Unix variants, only:

* SVR4.2

* Solaris kernels

have a similar feature.

### Kernel threading

A __kernel thread__ is an executiong context that can be __independently__ scheduled; It may be associated with a **user program**, or it may run only some **kernel functions**.

Context switches between __kernel threads__ are usually __much less expensive__ than context switches between __ordinary processes__, because the **former** usually operate on a __common address space__.

Some Unix kernels:

* Solaris

* SVR4.2/MP

are a set of kernel threads.

### Multithreaded application support

A multithreaded user application could be composed of many lightweight processes (__LWP__), which are processes that can operate on

* common address space

* common physical memory pages

* common opened files

* so on

Linux defines its own version of LWP which is different from the types used on other systems such as

* SVR4

* Solaris

While all the commercial Unix variants of LWP are base on __kernel threads__, Linux regards LWP as the basic execution context and handles them via the nonstandard `clone()` system call.

### Preemptive kernel

When compiled with the Premptive kernel option, Linux 2.6 can arbritrarly interleave execution flows while they are in privileged mode.

Besides Linux 2.6, a few other Unix like systems, such as Solaris and Match 3.0, are fully preemptive kernels. SVR4.2/MP introduces some fixed preemptive options as a method to get lo,oted preemption capability

### Muliprocessort support

Linux 2.6 supports symmetric multprocessing (SMP) for different modelsm including NUMA. The system can use multiple processors and each processor can handle any task.

Although a few parts of the kernel code are still serialized by means of a single "big kernel lock", it is fair to say that Linux 2.6 makes a near optimal use of __SMP__

### Filesystem

Linux's standard filesystem come in many flavours. You can use the plain old Ext2 filesystem if you don't have specific needs.

You might switch to Ext3 if you want to avoid lenghty filesystem checks after a system crash.

If you have to deal with many small files, the __ReiserFS__ filesystem is likely the best choice.

### Streams

Linux has no analog to he STREAMS I/O subsystem introduced in SVR4, althoigh it is inclued now in most Unix Kernels and has become the preferred interface for writing

* Device drivers

* terminal drivers

* network protocols

## Notes

* GPL -> General Public License

* POSIX -> Portable Operating System Interface for X

* API -> Application Programming interface

* SVR4 -> System V Release 4

* LWP -> lightweight process
