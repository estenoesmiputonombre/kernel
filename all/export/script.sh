#!/bin/bash

export SOMETHING="SOME variable"

export -p | grep ${!SOMETHING@}

# Until the user type exit, the variable will be still available
bash -i
