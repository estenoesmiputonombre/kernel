#!/bin/bash

# List all the images 
gcloud compute images list

# List all the preview images. Images that are in limited preview
gcloud compute images list --preview-images

# List all the images that acomplish a regex
gcloud compute images list --filter="ubuntu-1910"

# List deprecated images whose OS is ubuntu
gcloud compute images list --show-deprecated --filter="ubuntu"

# List all the standard images (this is by default)
gcloud compute images list --standard-images

# List all the non-standard images too
gcloud compute images list --no-standard-images
