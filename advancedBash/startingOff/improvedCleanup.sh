#!/bin/bash

LOG_DIR=/var/log
ROOT_UID=0
LINES=50
E_XCD=86         # Cant change directory
E_NOTROOT=87     # Non root exit error

if [ "$EUID" -ne "$ROOT_UID" ]; then
    echo "You must be root to run this script"
    exit $E_NOTROOT
fi

if [ -n "$1" ]; then
    lines=$1
else
    lines=$LINES
fi

# cd $LOG_DIR || {
# echo "Cannot change to necessary directory" >&2
# exit $E_XCD
# }

tail -n $lines "$LOG_DIR/messages" > "$LOG_DIR/mesg.temp" # Save last section of messages log file
mv mesg.temp messages 

exit 0
