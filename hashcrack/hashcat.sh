#!/bin/bash

# Check if the necessary dependencies are installed
if ! [ -x "$(command -v hashcat)" ]; then
    echo 'Error: hashcat is not installed.' >&2
    exit 1
fi

# Check if the user provided the necessary arguments
if [ $# -ne 2 ]; then
    echo "Usage: hashcat.sh [hash_file] [wordlist_file]"
    exit 1
fi

# Assign the arguments to variables
hash_file=$1
wordlist_file=$2

# Crack the hash using hashcat
hashcat -m 0 $hash_file $wordlist_file --force

echo "Cracking process completed. Check the results in the terminal"
