#!/bin/bash

# Check if the necessary dependencies are installed
if ! [ -x "$(command -v openssl)" ]; then
    echo 'Error: openssl is not installed.' >&2
    exit 1
fi

# Check if the user provided the necessary arguments
if [ $# -ne 2 ]; then
    echo "Usage: rsa_decrypt.sh [encrypted_file] [private_key]"
    exit 1
fi

# Assign the arguments to variables
encrypted_file=$1
private_key=$2

# Decrypt the file using openssl
openssl rsautl -decrypt -inkey $private_key -in $encrypted_file -out decrypted_file

echo "File decrypted successfully. The decrypted file is named 'decrypted_file'"
