#!/bin/bash

# Using this command you can set to you actual project a email to the roles viewer

gcloud projects add-iam-policy-binding \
    $(gcloud config get-value core/project) \
    --member serviceAccount:$(gcloud iam service-accounts list --filter="email:(estenoes*)" --format="value(email)") \
    --role roles/viewer
