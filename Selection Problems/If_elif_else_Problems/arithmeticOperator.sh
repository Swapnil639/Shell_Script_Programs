#!/bin/bash

read -p "Enter three number: " num1 num2 num3

# Find the sum, product, and average of the numbers
x1=$((num1 + num2 * num3))
x2=$((num1 * num2 + num3))
x3=$((num3 + num1 / num2))
x4=$((num1 % num2 + num3))

echo "X1: $x1"
echo "X2: $x2"
echo "X3: $x3"
echo "X4: $x4"


# Find the maximum value using if-else statements
if [ $x1 -ge $x2 ] && [ $x1 -ge $x3 ]; then
    max=$x1
elif [ $x2 -ge $x1 ] && [ $x2 -ge $x3 ]; then
    max=$x2
else
    max=$x3
fi

# Find the minimum value using if-else statements
if [ $x1 -le $x2 ] && [ $x1 -le $x3 ]; then
    min=$x1
elif [ $x2 -le $x1 ] && [ $x2 -le $x3 ]; then
    min=$x2
else
    min=$x3
fi

echo "Maximum value: $max"
echo "Minimum value: $min"
