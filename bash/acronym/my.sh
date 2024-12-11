#!/usr/bin/env bash

# let's try to do it in one line, and figure out how to do it:
# 1. remove the single quote: `tr -d "'"`
# 2. remove all non-alphanumeric characters: `tr -c 'a-zA-Z0-9' ' '`
# 3. split the string into words: `tr ' ' '\n'`
# 4. extract the first letter of each word `cut -c 1`
# 5. remove the newline characters `tr -d '\n'`
# 6. convert to uppercase `tr 'a-z' 'A-Z'`
# this is not really a readable solution, 
# but it's a good exercise, we only use tr command and cut command.
echo "$1" | tr -d "'" | tr -c 'a-zA-Z0-9' ' ' | tr ' ' '\n' | cut -c 1 | tr -d '\n' | tr 'a-z' 'A-Z'
