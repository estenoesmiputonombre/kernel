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
(It dont visuallice good in markdown un github)
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

## Stream Socket States

The following diagram represents all states that can be detected programmatically for a stream(TCP) socket:

### Schema


```        
		   -----------							* Close request received
		  | named and |
		  | listening |
		   -----------
			 ^		\
			 |       \  Connect request received
			 |		  \					   ---------------
		     |		   ------------		  | close pending |
			 |        | Connection |	   ---------------
	 bind()  |	      | pending    |	 */			\
	 listen()|		   ------------		 /			 \ closesocket()
			 |	    		\ accept()  /			  \
			 |	   connect() \         /			   \
	_		-------- 	   -----------   closesocket()	--------		 _
   (_) --> | opened |---->| connected | -------------> | closed | ----> (_)
			--------	   -----------	 				--------
						   /     |      \
						  /		 |	 	 \ send failed
						 /		 |OOB	  \
						/		 |data	   \ Output buffers available
			Data	   /  		 |[received \
			Received  /   All	 | | read]	 \
			   ---------- data  ----------	  --------------
			  |	readable |read | OBB data |  | Not writable |
			  |			 |	   | readable |  |				| send failed
			   ----------		----------	  --------------
```

### Table

* opened -> `socket()` returned an unnamed socket(and unnamed socket is one that is not bound to a local address and port). The socket can be named explicitly with `bind()` or implicitly with `connect()`.

* named and listening -> The socket is named(bound to a local address and port) and is ready to accept incomming conncetion requests.

* connection pending -> The network system received an incoming connection requests and is waiting for the application to respond.

* connected -> An association (virtual circuit) has been established between a local and remote host. Sending and receiving data is now possible.

* readable -> The network system received data and is ready to be read by the app using `recv()` or `recvfrom()`

* OOB readable -> Out Of Band data received by the network system received data and is ready to be read by the app using `recv()` or `recvfrom()`

* Not writable -> The network system does not have enough buffers to accommodate outgoing data.

* close pending -> The virtual circuit is close.

* closed -> The socket handle is invalid.
