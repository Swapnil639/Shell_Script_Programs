#!/bin/bash

echo "Enter number: "
read n
factorial=1

for (( i=1; i<=$n; i++ )); do
  factorial=$((factorial*i))
done

echo "$n factorial - $n! = $factorial"
