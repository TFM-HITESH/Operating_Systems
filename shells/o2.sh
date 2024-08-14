#!/bin/bash

# Read the value of n from the user
echo "Enter the value of n: "
read n

# Loop to generate the pattern
for ((i=1; i<=n; i++))
do
  for ((j=1; j<=i; j++))
  do
    echo -n "$j "
  done
  echo # Move to the next line
done
