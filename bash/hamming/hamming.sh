#!/usr/bin/env bash

main() {
    # check input params count and length, if error exit with code 1
    [[ $# -ne 2 ]] && echo "Usage: hamming.sh <string1> <string2>" && exit 1
    [[ ${#1} -ne ${#2} ]] && echo "strands must be of equal length" && exit 1

    local index=0
    local hamming_distance=0

    while [ $index -lt ${#1} ]; do
        if [[ "${1:$index:1}" != "${2:$index:1}" ]]; then
            hamming_distance=$((hamming_distance + 1))
        fi
        index=$((index + 1))
    done

    echo $hamming_distance
}

main "$@"