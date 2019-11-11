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

# List only the name of the images that you are looking for
gcloud compute images list --standard-images --filter="ubuntu-1804" --format="value(name)"

# List all the images printing the uri of the image
gcloud compute images list --standard-images --filter="debian" --uri

# List all the images that contains the word ubuntu in ascending order(by default) and in descending order(using ~)
gcloud compute images list --standard-images --filter="ubuntu" --uri --sort-by=name
gcloud compute images list --standard-images --filter="ubuntu" --uri --sort-by=~name
