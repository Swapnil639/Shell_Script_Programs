#!/bin/bash

heads=0
tails=0

while [ $heads -lt 11 ] && [ $tails -lt 11 ]; do
  flip=$((RANDOM%2))
  if [ $flip -eq 0 ]; then
    heads=$((heads+1))
    echo "Heads: $heads"
  else
    tails=$((tails+1))
    echo "Tails: $tails"
  fi
done

if [ $heads -eq 11 ]; then
  echo "Heads wins!"
else
  echo "Tails wins!"
fi
