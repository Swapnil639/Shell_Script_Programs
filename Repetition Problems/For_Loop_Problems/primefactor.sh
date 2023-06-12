#!/bin/bash

n=$1
echo "The prime factors of $n are:"

for ((i=2; i*i<=n; i++))
do
    while [ $((n%i)) -eq 0 ]
    do
        echo -n "$i "
        n=$((n/i))
    done
done

if [ $n -gt 1 ]
then
    echo "$n"
fi

echo ""
