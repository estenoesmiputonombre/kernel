#|/bin/bash

# Setting the project
gcloud config set core/project learned-vault-246412

# Setting the region
gcloud config set compute/region europe-west1

# Setting the zone
gcloud config set compute/zone europe-west1-b

# Creating the service-account
gcloud iam service-accounts create some-service-account --display-name="service-account" \
														--description="This is a service-account"

# Creating the compute instance
gcloud compute instances create test-instance --machine-type=f1-micro \
											  --service-account=$(gcloud iam service-accounts list --filter="email:some-service*" --format="value(email)")

# Take the IP of the instance for fun
IP=$(gcloud compute instances describe test-instance --format="value(networkInterfaces[0].accessConfigs.natIP"))

# Create the firewall rule
gcloud compute firewall-rules create deny-all-egress-traffic --action deny \
															 --rules "tcp:0-65535,udp:0-65535,icmp" \
															 --direction egress \
															 --destination-ranges=0.0.0.0/0 \
															 --network default \
															 --priority 65534 \
															 --target-service-accounts=$(gcloud iam service-accounts list --filter="email:some-service*" --format="value(email)") --description="Awsesome firewall rule"
