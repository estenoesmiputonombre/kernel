#!/bin/bash

gcloud compute firewall-rules create --action=DENY \
    --description="Deny from the port 70" \
    --direction=INGRESS \
    --rules=
    --priority=65535 \
