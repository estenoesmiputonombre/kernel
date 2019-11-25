#!/bin/bash

# Updating the subnets of the networks
gcloud compute networks subnets update default --region=us-central1 --enable-flow-logs

gcloud compute networks subnets update default --region=europe-west1 --enable-flow-logs

# Creating the instances 
gcloud compute instances create default-us-vm --zone=us-central1-a --network=default

gcloud compute instances create default-eu-vm --zone=europe-west1-b --network=default

gcloud compute instances create default-ap-vm --zone=asia-southeast1-a --network=default

# Getting the external IP of the instances
IP_US=$(gcloud compute instances describe default-us-vm --format="value(networkInterfaces[0].accessConfig[0].natIP)")
IP_EU=$(gcloud compute instances describe default-eu-vm --format="value(networkInterfaces[0].accessConfig[0].natIP)")
IP_AS=$(gcloud compute instances describe default-ap-vm --format="value(networkInterfaces[0].accessConfig[0].natIP)")

# ssh into a machine
gcloud compute ssh default-us-vm
