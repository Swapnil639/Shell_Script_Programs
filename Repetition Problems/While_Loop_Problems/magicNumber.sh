#!/bin/bash

echo "Think of a number between 1 and 100."

low=1
high=100

while true; do
  guess=$(( (low + high) / 2 ))
  read -p "Is your number less than $guess? (y/n) " answer
  if [ "$answer" = "y" ]; then
    high=$((guess-1))
  elif [ "$answer" = "n" ]; then
    low=$((guess+1))
  else
    echo "Invalid input. Please enter y or n."
    continue
  fi
  if [ $low -eq $high ]; then
    echo "Your number is $low!"
    break
  fi
done
