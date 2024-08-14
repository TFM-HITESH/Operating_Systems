#!/bin/bash

# Read a multi-digit number from the user
echo "Enter a multi-digit number: "
read number

# Reverse the number and discard trailing zeros
reverse_number=0
while [ $number -gt 0 ]; do
    # Extract the last digit
    last_digit=$((number % 10))
    
    # Add the last digit to the reversed number
    reverse_number=$((reverse_number * 10 + last_digit))
    
    # Remove the last digit from the original number
    number=$((number / 10))
done

# Print the reversed number
echo "Reversed number: $reverse_number"