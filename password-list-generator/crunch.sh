#!/bin/bash

# Check if the necessary dependencies are installed
if ! [ -x "$(command -v crunch)" ]; then
    echo 'Error: crunch is not installed.' >&2
    exit 1
fi

# Check if the user provided the necessary arguments
if [ $# -ne 4 ]; then
    echo "Usage: crunch.sh [min_length] [max_length] [charset] [output_file]"
    exit 1
fi

# Assign the arguments to variables
min_length=$1
max_length=$2
charset=$3
output_file=$4

# Generate the wordlist using crunch
crunch $min_length $max_length $charset -o $output_file

echo "Wordlist generated successfully. Check the results in the '$output_file' file"
