#!/usr/bin/env bash
# this one is my own solution, but it's not the best practice, leave it here for reference

main() {
    # check if input parameters less than 2, exit with code 1
    if [[ $# -lt 2 ]]; then
        echo "Usage: hamming.sh <string1> <string2>"
        exit 1
    fi
    # check when number of params is correct but length is different
    if [[ ${#1} -ne ${#2} ]]; then
        echo "strands must be of equal length"
        exit 1
    fi

    # must declare these two vars, cause if not
    str1=$1
    str2=$2

    index=0
    hamming_distance=0

    while [ $index -lt ${#str1} ]; do
        if [[ "${str1:$index:1}" != "${str2:$index:1}" ]]; then
            hamming_distance=$((hamming_distance + 1))
        fi
        index=$((index + 1))
    done

    echo $hamming_distance
}

main "$@"
