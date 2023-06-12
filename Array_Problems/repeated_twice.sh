#!/bin/bash


declare -a repeated

for ((i=0; i<=100; i++))
do
    # Convert the number to a string
    str_num="${i}"

    
    if [[ $str_num =~ ([0-9]).*\1 ]]
    then
        repeated+=($i)
    fi
done

echo "Digits repeated twice: ${repeated[@]}"
