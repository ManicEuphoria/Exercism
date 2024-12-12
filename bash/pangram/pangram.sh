#!/usr/bin/env bash

main() {
    local uniq_count=($(echo "${1,,}" | grep -o '[a-z]' | sort -u | wc -l))
    
    (( uniq_count == 26 )) && echo true || echo false
}
main "$@"