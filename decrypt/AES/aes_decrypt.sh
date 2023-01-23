#!/bin/bash

# This script takes 2 arguments, the first one is the encrypted file, and the second one is the key that was used for encryption.
# The script uses OpenSSL to perform the decryption, it checks if the OpenSSL is installed on the system, if not it will prompt the user to install it,
# then the script uses the key to decrypt the file and it will output the decrypted file named 'decrypted_file', 
# and it will show a message that the file has been decrypted successfully.

# Check if the necessary dependencies are installed
if ! [ -x "$(command -v openssl)" ]; then
    echo 'Error: openssl is not installed.' >&2
    exit 1
fi

# Check if the user provided the necessary arguments
if [ $# -ne 2 ]; then
    echo "Usage: aes_decrypt.sh [encrypted_file] [key]"
    exit 1
fi

# Assign the arguments to variables
encrypted_file=$1
key=$2

# Decrypt the file using openssl
openssl enc -d -aes-256-cbc -in $encrypted_file -out decrypted_file -k $key

echo "File decrypted successfully. The decrypted file is named 'decrypted_file'"
