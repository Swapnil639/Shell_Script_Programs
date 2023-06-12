#!/bin/bash

nums=(0 1 -1 2 -2 3 -3 4 -4 5 -5)


for ((i=0; i<${#nums[@]}-2; i++))
do
    for ((j=i+1; j<${#nums[@]}-1; j++))
    do
        for ((k=j+1; k<${#nums[@]}; k++))
        do
            if [ $((nums[i] + nums[j] + nums[k])) -eq 0 ]
            then
                echo "Found sum of three integers adds up to zero: ${nums[i]} ${nums[j]} ${nums[k]}"
            fi
        done
    done
done
