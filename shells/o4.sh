#!/bin/bash

# Read the value of n from the user
echo "Enter the value of n: "
read n

# Initialize the first two Fibonacci numbers
a=0
b=1

# Print the Fibonacci numbers less than or equal to n
echo "Fibonacci numbers less than or equal to $n are:"

# Loop to generate Fibonacci numbers
while [ $a -le $n ]
do
  echo -n "$a "
  
  # Calculate the next Fibonacci number
  fib=$((a + b))
  
  # Update the values of a and b
  a=$b
  b=$fib
done

echo # Move to the next line after printing all numbers
