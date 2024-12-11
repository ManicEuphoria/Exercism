#!/usr/bin/env bash

main() {
    local phrase="$1"
    local acronym=""

    # only keep letters, numbers and spaces
    phrase=$(echo "$phrase" | tr -c "a-zA-Z0-9' " ' ')

    # iterate over each word and extract the first letter
    for word in $phrase; do
        [[ -n "$word" ]] && acronym+="${word:0:1}"
    done

    # transform to uppercase and output
    echo "${acronym^^}"
}

main "$@"