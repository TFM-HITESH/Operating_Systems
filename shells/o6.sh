#!/bin/bash

# Check if any arguments are passed
if [ $# -eq 0 ]; then
  echo "No strings provided. Please pass some strings as arguments."
  exit 1
fi

# Store the arguments in an array
strings=("$@")

# Loop through the array and print the length of each string
for string in "${strings[@]}"
do
  length=${#string}
  echo "Length of '$string' is: $length"
done
