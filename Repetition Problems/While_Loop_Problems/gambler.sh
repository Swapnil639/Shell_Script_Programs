#!/bin/bash

money=100
goal=200
won=0
bets=0

while [ $money -gt 0 ] && [ $money -lt $goal ]; do
  bets=$((bets+1))
  flip=$((RANDOM%2))
  if [ $flip -eq 0 ]; then
    money=$((money+1))
    won=$((won+1))
  else
    money=$((money-1))
  fi
done

if [ $money -eq 0 ]; then
  echo "You are broke!"
else
  echo "You reached your goal of Rs $goal!"
fi

echo "Number of times won: $won"
echo "Number of bets made: $bets"
