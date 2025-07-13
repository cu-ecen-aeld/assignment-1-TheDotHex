#!/bin/bash

if [ $# -ne 2 ]; then
    echo "ERROR: Requires two arguments: $0 <filesdir> <searchstr>"
    exit 1
fi

filesdir="$1"
searchstr="$2"

if [ ! -d "$filesdir" ]; then
    echo "ERROR: $filesdir not found."
    exit 1
fi

file_count=$(find "$filesdir" -type f | wc -l)

matching_lines=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)

echo "The number of files are $file_count and the number of matching lines are $matching_lines"