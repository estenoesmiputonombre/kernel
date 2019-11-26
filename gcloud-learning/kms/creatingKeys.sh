#!/bin/bash

gcloud services enable cloudkms.googleapis.com

gcloud kms keyrings create my-ring --location global

gcloud kms keys create my-key --location global \
                              --keyring my-ring \
                              --purpose encrypt

gcloud kms encrypt --location global \
                   --keyring my-ring \
                   --key my-key \
                   --plaintext-file myfile.txt \
                   --ciphertext-file myfile.txt.encrypted
                   
gcloud kms descrypt --location global \
                    --keyring my-ring \
                    --key my-key \
                    --ciphertext-file myfile.txt.encrypted \
                    --plaintext-file myfile.txt.decrypted
