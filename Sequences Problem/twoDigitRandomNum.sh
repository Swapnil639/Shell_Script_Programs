#!/bin/bash

value1=$((RANDOM % 90 + 10))
value2=$((RANDOM % 90 + 10))
value3=$((RANDOM % 90 + 10))
value4=$((RANDOM % 90 + 10))
value5=$((RANDOM % 90 + 10))

echo "Values: $value1 $value2 $value3 $value4 $value5"


sum=$((value1 + value2 + value3 + value4 + value5))

average=$((sum / 5))

echo "Sum: $sum"
echo "Average: $average"
