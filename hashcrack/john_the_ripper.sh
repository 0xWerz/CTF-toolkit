#!/bin/bash

# Check if the necessary dependencies are installed
if ! [ -x "$(command -v john)" ]; then
    echo 'Error: John the Ripper is not installed.' >&2
    exit 1
fi

# Check if the user provided the necessary arguments
if [ $# -ne 3 ]; then
    echo "Usage: john_the_ripper.sh [hash_file] [wordlist_file] [hash_type]"
    exit 1
fi

# Assign the arguments to variables
hash_file=$1
wordlist_file=$2
hash_type=$3

# Crack the hash using John the Ripper
john --wordlist=$wordlist_file --format=$hash_type $hash_file

echo "Cracking process completed. Check the results in the terminal"
