#!/bin/bash

echo "$#"
for((i=0;i<$#;i++)); do
    case ${!i} in
        -d|--directory)
            ((i++))
            if [[ $i -le $# ]] && ! [[ -d ${!i} ]]; then
                mkdir --parents --mode=777 --verbose ${!i}
            fi
        ;;
        -f|--file)
            ((i++))
            if [[ $i -le $# ]] && ! [[ -a ${!i} ]]; then
                > ${!i}
            fi
        ;;
    esac
done
