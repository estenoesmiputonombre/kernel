# Socket

## Socket type

* TCP

* UDP

## Operation mode

* blocking

* non-blocking

* asynchronous

## Application type

* single-threaded

* mutli-threaded

## Datagram Socket States

### Schema

The following diagram represents all states that can be detect programmatically for a datagram (UDP) socket.

```
  Mutually Exclusive
  
  								sento(),
  socket 		------------    bind(),       ------------  				   
	 _		   |   opened 	|   connect()    |   named    |   closesocket()    ---------		   _
	(_)  ----> | (Writable) | -------------> | (Writable) |  ---------------> |  Closed | ----->  (_)
     		    ------------				  ------------			 		   ---------
												 /	  \  send failed(when go down)
												/      \
											   /        \    output buffers
								data arrived  /          \      available
											 /  *         \
										----------      --------------
						data arrived   | readable |    | Not writable | send failed
										----------      --------------
	* all data read
```

### Table

* opened -> `socket()` returned an unnamed socket(an unnamed socket is one that is not bound to a local address and port). The socket can be named explicitly with bind or implicitly with `sendto()` or `connect()`.

* named -> A named socket is one that is bound to a local address and a port. The socket can now send and/or receive.

* readable -> The network system received data and is ready to be read by the application using `recv()` or `recvfrom()`.

* not Writable -> The network system does not have enough buffers to accommodate outgoing data.

* closed -> The socket handle is invalid.
