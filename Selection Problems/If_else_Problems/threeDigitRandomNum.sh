U nano 7.2                  twoDigitRandomNum.sh
#!/bin/bash


value1=$((RANDOM % 900 + 10))
value2=$((RANDOM % 900 + 10))
value3=$((RANDOM % 900 + 10))
value4=$((RANDOM % 900 + 10))
value5=$((RANDOM % 900 + 10))

echo "Values: $value1 $value2 $value3 $value4 $value5"


sum=$((value1 + value2 + value3 + value4 + value5))

average=$((sum / 5))

echo "Sum: $sum"
echo "Average: $average"
