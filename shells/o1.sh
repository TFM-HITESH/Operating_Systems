#!/bin/bash

# Function to perform arithmetic operations
perform_operation() 
{
  case $operation in
    1)
      result=$((num1 + num2))
      echo "Addition of $num1 and $num2 is: $result"
      ;;
    2)
      result=$((num1 - num2))
      echo "Subtraction of $num1 from $num2 is: $result"
      ;;
    3)
      result=$((num1 * num2))
      echo "Multiplication of $num1 and $num2 is: $result"
      ;;
    4)
      if [ $num2 -ne 0 ]; then
        result=$((num1 / num2))
        echo "Division of $num1 by $num2 is: $result"
      else
        echo "Error: Division by zero is not allowed"
      fi
      ;;
    *)
      echo "Invalid operation"
      ;;
  esac
}

# Read two numbers from user
echo "Enter first number: "
read num1
echo "Enter second number: "
read num2

# Menu for selecting operation
echo "Select operation to perform:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read operation

# Perform the selected operation
perform_operation
