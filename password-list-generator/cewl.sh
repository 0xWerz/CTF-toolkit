#!/bin/bash

# Check if the necessary dependencies are installed
if ! [ -x "$(command -v cewl)" ]; then
  echo 'Error: cewl is not installed.' >&2
  exit 1
fi

# Check if the user provided the necessary arguments
if [ $# -ne 2 ]; then
  echo "Usage: cewl.sh [website_url] [output_file]"
  exit 1
fi

# Assign the arguments to variables
website_url=$1
output_file=$2

# Generate the wordlist using cewl
cewl $website_url -m 6 -w $output_file

echo "Wordlist generated successfully. Check the results in the '$output_file' file"
