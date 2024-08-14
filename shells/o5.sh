#!/bin/bash

# Read a string from the user
echo "Enter a string: "
read input_string

# Reverse the string
reverse_string=""
length=${#input_string}

for (( i=$length-1; i>=0; i-- ))
do
  reverse_string="$reverse_string${input_string:$i:1}"
done

# Check if the string is a palindrome
if [ "$input_string" == "$reverse_string" ]; then
  echo "The string '$input_string' is a palindrome."
else
  echo "The string '$input_string' is not a palindrome."
fi
