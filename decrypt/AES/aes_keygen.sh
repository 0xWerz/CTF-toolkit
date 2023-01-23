#!/bin/bash

# This script takes one argument, which is the key length. The script uses OpenSSL to generate a key,
# it checks if the OpenSSL is installed on the system, if not it will prompt the user to install it,
# then the script uses openssl command to generate the key and it will output the key file named 'key.txt' ,
# and it will show a message that the AES key has been generated successfully.

# Check if the necessary dependencies are installed
if ! [ -x "$(command -v openssl)" ]; then
    echo 'Error: openssl is not installed.' >&2
    exit 1
fi

# Check if the user provided the necessary arguments
if [ $# -ne 1 ]; then
    echo "Usage: aes_keygen.sh [key_length]"
    exit 1
fi

# Assign the argument to a variable
key_length=$1

# Generate the key
openssl rand -hex $key_length > key.txt

echo "AES key generated successfully. The key is named 'key.txt'"
