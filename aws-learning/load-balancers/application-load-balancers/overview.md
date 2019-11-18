# ALB (Application Load Balancer)

## Definition

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
