#!/bin/bash

echo "$#"
for((i=0;i<$#;i++)); do
    case ${!i} in
        -d|--directory)
            ((i++))
            if [[ $temp -lt $# ]] && ! [[ -d ${!i} ]]; then
                mkdir --parents --mode=777 --verbose ${!i}
            fi
        ;;
        -f|--file)
            ((i++))
            if [[ $i -lt $# ]] && ! [[ -a ${!i} ]]; then
                touch ${!i}
            fi
        ;;
    esac
done
