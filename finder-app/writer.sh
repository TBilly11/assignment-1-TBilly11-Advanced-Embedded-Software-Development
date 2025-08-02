#!/bin/bash

# Check for required arguments
if [ $# -lt 2 ]; then
  echo "Error: Missing arguments. Usage: $0 <writefile> <writestr>"
  exit 1
fi

writefile=$1
writestr=$2

# Create directory path if needed
mkdir -p "$(dirname "$writefile")"

# Try to write the string to file
echo "$writestr" > "$writefile"

# Check if write was successful
if [ $? -ne 0 ]; then
  echo "Error: Failed to write to $writefile"
  exit 1
fi

exit 0
