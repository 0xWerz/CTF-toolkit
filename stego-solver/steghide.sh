#!/bin/bash

# Check if the necessary dependencies are installed
if ! [ -x "$(command -v steghide)" ]; then
    echo 'Error: steghide is not installed.' >&2
    exit 1
fi

# Check if the user provided the necessary arguments
if [ $# -ne 3 ]; then
    echo "Usage: steghide.sh [input_image] [output_file] [passphrase]"
    exit 1
fi

# Assign the arguments to variables
input_image=$1
output_file=$2
passphrase=$3

# Extract the hidden data using steghide
steghide extract -sf $input_image -xf $output_file -p $passphrase

echo "Data extracted successfully. Check the results in the '$output_file' file"
