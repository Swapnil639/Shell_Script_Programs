#!/bin/bash

echo "Enter the start range:"
read start

echo "Enter the end range:"
read end

echo "The prime number betn $start and $end are:"

for (( num=$start;num<=$end;num++ ))
do
      is_Prime=0
      for (( i=2;i<$num;i++ ))
      do
         if [$(($num % $i)) -eq 0]; then
           is_Prime=1
           break
         fi
      done
      if [ $is_Prime -eq 1 ]; then
         echo $num
      fi
done
