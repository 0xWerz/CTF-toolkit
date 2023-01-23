#!/bin/bash

# Check if the necessary dependencies are installed
if ! [ -x "$(command -v openssl)" ]; then
    echo 'Error: openssl is not installed.' >&2
    exit 1
fi

# Check if the user provided the necessary arguments
if [ $# -ne 1 ]; then
    echo "Usage: rsa_keygen.sh [key_length]"
    exit 1
fi

# Assign the argument to a variable
key_length=$1

# Generate the private key
openssl genpkey -algorithm RSA -out private_key.pem -aes256 -outform PEM -aes-cbc-pkcs7 -pass pass:password -aes256 -outform PEM -passout pass:password -aes-cbc-pkcs7 -genkey -algorithm RSA -out private_key.pem

# Extract the public key from the private key
openssl rsa -in private_key.pem -outform PEM -pubout -out public_key.pem

echo "RSA key pair generated successfully. The private key is named 'private_key.pem' and the public key is named 'public_key.pem'"
