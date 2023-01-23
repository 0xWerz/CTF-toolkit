#!/bin/bash

# Check if the necessary dependencies are installed
if ! [ -x "$(command -v masscan)" ]; then
    echo 'Error: masscan is not installed.' >&2
    exit 1
fi

# Check if the user provided the necessary arguments
if [ $# -ne 1 ]; then
    echo "Usage: masscan.sh [target_ip_range]"
    exit 1
fi

# Assign the argument to a variable
target=$1

# Perform a full scan using masscan
masscan $target -p1-65535 --rate=10000 -oG masscan_output.txt

echo "Scan completed. Check the results in the 'masscan_output.txt' file"
``
