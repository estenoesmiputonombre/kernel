#!/bin/bash

# Add a normal user
adduser user1

# The user will get a UID from  a range described in the config file. 
# You can specified the uid and even the range if you dont want to select it
adduser --uid 1003 user2

adduser --firstuid 1000 --lastuid 2000 user3

# We can create a user and add it to a group by id or name
adduser --gid 1000 user4

adduser --ingroup group user5

# We can add extra groups to a user
adduser --add_extra_groups group user6

# 
