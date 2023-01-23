#!/bin/bash

# Check if the necessary dependencies are installed
if ! [ -x "$(command -v nmap)" ]; then
    echo 'Error: nmap is not installed.' >&2
    exit 1
fi

# Check if the user provided the necessary arguments
if [ $# -ne 1 ]; then
    echo "Usage: nmap.sh [target_ip_or_hostname]"
    exit 1
fi

# Assign the argument to a variable
target=$1

# Perform a full scan using nmap
nmap -sS -sU -sV -p- -A -oN nmap_output.txt $target

echo "Scan completed. Check the results in the 'nmap_output.txt' file"
