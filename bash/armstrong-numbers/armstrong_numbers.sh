#!/usr/bin/env bash

main() {

    local sum=0

    for ((i=0; i<${#1}; i++)); do
        ((sum+=${1:$i:1}**${#1}))
    done

    [ "$1" -eq $sum ] && echo true || echo false
}

main "$@"