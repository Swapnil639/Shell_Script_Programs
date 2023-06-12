#!/bin/bash


harmonic=0

for (( i=1; i<=5; i++ ))
do
  harmonic=$(( $harmonic + 1 / $i ))
done

echo "The harmonic number is: $harmonic"
