#!/bin/bash

# Check arguments
if [ $# -ne 2 ]; then
    echo "Error: Two arguments required. Usage: $0 <directory> <search string>"
    exit 1
fi

filesdir=$1
searchstr=$2

# Check if filesdir is a valid directory
if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir is not a valid directory"
    exit 1
fi

# Find number of files
num_files=$(find "$filesdir" -type f | wc -l)

# Find number of matching lines
num_matches=$(grep -r "$searchstr" "$filesdir" | wc -l)

# Print result
echo "The number of files are $num_files and the number of matching lines are $num_matches"

exit 0
