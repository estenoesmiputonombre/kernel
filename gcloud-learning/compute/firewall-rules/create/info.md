# firewall-rules

`gcloud compute firewall-rules create` - create a Google Compute Engine firewall rule

## Description

`gcloud compute firewall-rules create` is used to create firewall rules to allow/deny incoming/outgoing traffic.

## SYNOPSIS

```
    gcloud compute firewall-rules create NAME
        (--action=ACTION | --allow=PROTOCOL[:PORT[-PORT]], [...])
        [--decription=DESCRIPTION]
        [--destination-ranges=CIDR_RANGE, [CIDR_RANGE...]]
        [--direction=DIRECTION] [--disabled] [--enable-logging]
        [--network=NETWORK; default="default"] [--priority=PRIORITY]
        [--rules=PROTOCOL[:PORT[-PORT]], [...]]
        [--source-ranges=CIDR_RANGE,[CIDR_RANGE...]]
        [--source-service-accounts=EMAIL,[EMAIL...]]
        [--source-tags=TAG,[TAG...]]
        [--target-service-accounts=EMAIL,[EMAIL...]]
        [--target-tags=TAG,[TAG...]] [CLOUD_WIDE_FLAG...]
```

## NAME

Name of the firewall rule to create.

## REQUIRED FLAGS

### --action=ACTION

The action of the firewall rule: whether to *allow* or *deny* matching traffic.

If specified, the flag --rules must also be specified.

* ALLOW

* DENY

## NAME

Name of the firewall rule to create.

## REQUIRED FLAGS

### --action=ACTION

The action of the firewall rule: whether to *allow* or *deny* matching traffic.

If specified, the flag --rules must also be specified.

* ALLOW

* DENY

`gcloud compute firewall-rules create --action=ALLOW --rules=tcp:80-90`

`gcloud compute firewall-rules create --action=DENY --rules=tcp:80-90`

### --allow=PROTOCOL[:PORT[-PORT]],...

protocols:

* TCP (Transport Control Protocol) 

* UDP (User Datagram Protocol)

* ICMP (Internet Control Message Protocol)

* ESP (Encapsulating Security Playload)

* AH (Authentication Header)

* SCTP (Stream Control Transmission Protocol)
