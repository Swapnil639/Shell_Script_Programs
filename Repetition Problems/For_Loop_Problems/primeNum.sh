#!/bin/bash

read -p "Enter a number: " num

if [[ $num -lt 2 ]]; then
    echo "$num is not a prime number."
    exit
fi

for (( i=2; i<$num; i++ )); do
    if [[ $((num%i)) -eq 0 ]]; then
        echo "$num is not a prime number."
        exit
    else
        echo "$num is prime number"
        exit
    fi
done
