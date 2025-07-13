#!/bin/bash

if [ $# -ne 2 ]; then
    echo "ERROR: Requires two arguments: $0 <writefile> <writestr>"
    exit 1
fi

writefile="$1"
writestr="$2"

writedir=$(dirname "$writefile")

if ! mkdir -p "$writedir" 2>/dev/null; then
    echo "ERROR: Could not create directory path $writedir"
    exit 1
fi

if ! echo "$writestr" > "$writefile" 2>/dev/null; then
    echo "ERROR: Could not create file $writefile"
    exit 1
fi