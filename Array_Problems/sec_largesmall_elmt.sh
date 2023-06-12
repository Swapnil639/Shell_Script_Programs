#!/bin/bash

# Generate 10 random 3-digit numbers
for ((i=0; i<10; i++))
do
    numbers[i]=$((RANDOM % 900 + 100))
done

# Print the array of random numbers
echo "Random numbers: ${numbers[@]}"

# Find the 2nd largest and 2nd smallest elements
largest=${numbers[0]}
second_largest=${numbers[0]}
smallest=${numbers[0]}
second_smallest=${numbers[0]}

for ((i=0; i<10; i++))
do
    if [ ${numbers[i]} -gt $largest ]
    then
        second_largest=$largest
        largest=${numbers[i]}
    elif [ ${numbers[i]} -gt $second_largest -a ${numbers[i]} -ne $largest ]
    then
        second_largest=${numbers[i]}
    fi

    if [ ${numbers[i]} -lt $smallest ]
    then
        second_smallest=$smallest
        smallest=${numbers[i]}
    elif [ ${numbers[i]} -lt $second_smallest -a ${numbers[i]} -ne $smallest ]
    then
        second_smallest=${numbers[i]}
    fi
done

# Print the 2nd largest and 2nd smallest elements
echo "2nd largest element: $second_largest"
echo "2nd smallest element: $second_smallest"
