#!/bin/bash

# Read three numbers from the user
echo "Enter the first number: "
read num1
echo "Enter the second number: "
read num2
echo "Enter the third number: "
read num3

# Finding the biggest number
if [ $num1 -ge $num2 ] && [ $num1 -ge $num3 ]; then
    biggest=$num1
elif [ $num2 -ge $num1 ] && [ $num2 -ge $num3 ]; then
    biggest=$num2
else
    biggest=$num3
fi

# Finding the smallest number
if [ $num1 -le $num2 ] && [ $num1 -le $num3 ]; then
    smallest=$num1
elif [ $num2 -le $num1 ] && [ $num2 -le $num3 ]; then
    smallest=$num2
else
    smallest=$num3
fi

# Display the results
echo "The biggest number is: $biggest"
echo "The smallest number is: $smallest"
