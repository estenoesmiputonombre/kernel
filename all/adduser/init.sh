#!/bin/bash

# Add a normal user
adduser user1

# The user will get a UID from  a range described in the config file. 
# You can specified the uid and even the range if you dont want to select it
adduser --uid 1003 user2

adduser --firstuid 1000 --lastuid 2000 user3

# 
