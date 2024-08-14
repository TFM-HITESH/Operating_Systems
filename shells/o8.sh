#!/bin/bash

# Function to calculate factorial
factorial() {
  num=$1
  fact=1
  for (( i=1; i<=num; i++ ))
  do
    fact=$((fact * i))
  done
  echo $fact
}

# a) Calculate 1! + 2! + 3! + … + n!
sum_factorials() {
  sum=0
  for (( i=1; i<=$1; i++ ))
  do
    fact=$(factorial $i)
    sum=$((sum + fact))
  done
  echo "Sum of factorials (1! + 2! + ... + $1!) = $sum"
}

# b) Calculate 1 + x + x^2 + x^3 + … + x^n
sum_powers() {
  x=$1
  n=$2
  sum=1
  power=1
  for (( i=1; i<=n; i++ ))
  do
    power=$((power * x))
    sum=$((sum + power))
  done
  echo "Sum of powers (1 + $x + $x^2 + ... + $x^$n) = $sum"
}

# c) Calculate 1 + 1/2! + 1/3! + 1/4! + … + 1/n!
sum_inverse_factorials() {
  n=$1
  sum=1.0
  for (( i=2; i<=n; i++ ))
  do
    fact=$(factorial $i)
    sum=$(echo "$sum + 1/$fact" | bc -l)
  done
  echo "Sum of inverse factorials (1 + 1/2! + 1/3! + ... + 1/$n!) = $sum"
}

# Main script execution
echo "Choose the operation:"
echo "1. 1! + 2! + 3! + … + n!"
echo "2. 1 + x + x^2 + x^3 + … + x^n"
echo "3. 1 + 1/2! + 1/3! + … + 1/n!"
read choice

case $choice in
  1)
    echo "Enter the value of n: "
    read n
    sum_factorials $n
    ;;
  2)
    echo "Enter the value of x: "
    read x
    echo "Enter the value of n: "
    read n
    sum_powers $x $n
    ;;
  3)
    echo "Enter the value of n: "
    read n
    sum_inverse_factorials $n
    ;;
  *)
    echo "Invalid choice!"
    ;;
esac    