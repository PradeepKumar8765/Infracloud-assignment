#!/bin/bash

# Check if two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 start_index end_index"
    exit 1
fi

start=$1
end=$2

# Validate that end is greater than start
if [ $end -le $start ]; then
    echo "End index must be greater than start index"
    exit 1
fi

# Remove existing inputFile if it exists
rm -f inputFile

# Generate CSV entries
for i in $(seq $start $end); do
    random_num=$((RANDOM % 1000))
    echo "$i, $random_num" >> inputFile
done