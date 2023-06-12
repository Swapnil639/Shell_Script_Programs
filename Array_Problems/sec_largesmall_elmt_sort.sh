#!/bin/bash

for ((i=0; i<10; i++))
do
    numbers[i]=$((RANDOM % 900 + 100))
done


echo "Random numbers: ${numbers[@]}"

sorted=($(echo "${numbers[@]}" | tr ' ' '\n' | sort -n))

echo "Sorted numbers: ${sorted[@]}"


second_largest=${sorted[8]}
second_smallest=${sorted[1]}

echo "2nd largest element: $second_largest"
echo "2nd smallest element: $second_smallest"
