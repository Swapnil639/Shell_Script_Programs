#!/bin/bash

number1=$((RANDOM % 10))

echo "Random number: $number1"

number2=$((RANDOM % 6+1))

echo "Random number: $number2"

number3=$(((( $number1 + $number2))))

echo "Random number: $number3"
