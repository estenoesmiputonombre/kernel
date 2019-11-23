# ALB (Application Load Balancer)

## Definition

Functions at the application layer, (the seventh of the Open Systems Interconnection(OSI) model)

A load balancer serves as the __single point__ of contact for clients.

The load balancer __distributes incomming application traffic__ across multiple targets, such as EC2 instances

A load balancer has one or more **listeners**

## Listener

A listener checks for connection request from clients, using the **protocol** and **port** that you configure.

A listener have at minimun one rule. 

A __rule__ consists of a __priority__, one or more **actions** and or more **conditions**

When the conditions are met, the actions are executed.

## Target group

Each __target group__ **routes** requests to one or more registered targets, such as EC2 instances, using the protocol and port that you specify.

You can register a __target__ with __multiple target groups__.

You can configure __health checks__ on a per __target group basics__.

__Health checks__ are performed on all targets registered to a target group that is specified in a listener rule for your load balancer.

### Schema

```
							 ---------------
							| Load Balancer |
							 ---------------
									|
	 -------------------			|			 ----------------------------
	|  ------			|			|			|  ------			  ------ |
	| | Rule | Listener | ----------------------| | Rule | Listener  | Rule ||
	|  ------			|						|  ------			  ------ |
	 -------------------						 ----------------------------
			   |										    |
	   -----------------					  ------------------------
	  |					|					 |			  |			  |
 -----|-----------------|------		 	 ----|------------|-----------|------
|	  v					v	   |	    |    v			  v	    	  v      |
|  --------			 --------  |	    |  --------	   --------	   --------  |
| | Target |		| Target | |	    | | Target |  | Target |  | Target | |
|  --------			 --------  |	    |  --------	   --------	   --------  |
|		  Target group	Health |		|				Target group  Health |
|						Check  |		|							  Check  |
 ------------------------------			 ------------------------------------
```

## Benefits of Migrating from a Classic Load Balancer

* Support for **path-based routing**. You can configure rules for your listener that forward request based on the URL in the request. This enables you to structure your application as smaller services, and __route requests__ to the __correct service__ based on the __content of the URL__.

* Support for **host-based routing**. You can configure rules for your listener that forward requests __based on the host__ field in the HTTP header. This enables to route request to multiple domains using a single Load Balancer.

* Support for **routing based on fields in the request**, such as standard and custom HTTP headers and methods, query parameters, and source IP addresses.

* Support for **routing request to multiple applications on a single EC2 instance**. You can register each instance of IP address with the same target group using multiple ports.

* Support for **redirecting requests from one URL to another**

* Support for **returning a custom HTTP response**

* Support for **registering targets by IP address**, including targets outside the __VPC__ for the load balancer.

* Support for the **load balancer to authenticate users of your application** through their corporate or social identities before routing requests.

* Support for **containerized aplications
