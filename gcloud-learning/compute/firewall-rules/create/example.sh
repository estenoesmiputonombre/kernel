#!/bin/bash

# A good practise is to deny all outgoing traffic, so, we could do this
gcloud compute firewall-rules create deny-all-egress-traffic --action deny \
															 --rules "tcp:0-65535,udp:0-65535,icmp" \
															 --direction egress \
															 --destination-ranges 0.0.0.0/0 \
															 --network default \
															 --description "Deny all the traffic from each machine"

# We can enable a port to access to our application
gcloud compute firewall-rules create allow-http-ingress-traffic --action allow \
																--rules tcp:80 \
																--direction ingress \
																--source-ranges 0.0.0.0/0 \
																--network default \
																--description "Allow all the tcp traffic that uses port 80"


