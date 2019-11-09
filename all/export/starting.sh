#!/bin/bash

# Use source fileName.sh, to export and unexport variables in the main session

function exported {
    if [ $(export -p | grep --count $1) -eq 1 ]; then
        echo -ne "The variable \$$1 is exported\n"
        export -n $1
    fi   
}

export -f exported

FIRST="First var"

export FIRST
export SECOND="Second var"

exported ${!FIRST@}
exported ${!SECOND@}
unset -f exported
