# Overview

gcloud compute instances start - start a stopped virtual machine instance

## Synopsis

`gcloud compute instances start INSTANCE_NAMES [INSTANCE_NAMES ...] [--async] [--csek-key-file=FILE] [--zone=ZONE] [GCLOUD_WIDE_FLAG ...]`

## INSTANCE NAMES

[resource](https://cloud.google.com/compute/docs/reference/rest/v1/instances)

## FLAGS

* --async -> return immediatly, without waiting the operation in progress to complete.

* --csek-key-file=FILE -> Customer-Supplied Encrypted Key used when creating, mounting, or snapshotting disks 

* --zone=ZONE -> Zone of the instances to operate on. it can be provided using __compute/zone__ property or using the command `gcloud config set compute/zone ZONE` and to unset, use this command `gcloud config unset compute/zone`. Alternatively, we can store it in the environment variable `CLOUDSDK_COMPUTE_ZONE`

Remember: we can list all the zones using the command: `gcloud compute zone list`
