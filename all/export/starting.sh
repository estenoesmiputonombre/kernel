#!/bin/bash

function exported {
    if [ $(export -p | grep --count $1) -eq 1 ]; then
        echo -ne "The variable \$$1 is exported\n"
        export -n $FIRST
    fi   
}

export -f exported

FIRST="First var"

export FIRST
export SECOND="Second var"

exported ${!FIRST@}
exported ${!SECOND@}
unset -f exported
