#!/bin/bash

n=$1
power=0

while [[ $power -le 8 && $((2**n)) -gt $((2**power)) ]]
do
    result=$((2**power))
    if [ $result -le 256 ]
    then
        echo "2^$power = $result"
        ((power++))
    else
        break
    fi
done
