#!/bin/bash

function is_prime {
  num=$1
  if [ $num -lt 2 ]
  then
    return 1
  fi
  for ((i=2; i<=num/2; i++))
  do
    if [ $((num%i)) -eq 0 ]
    then
      return 1
    fi
  done
  return 0
}

function get_palindrome {
  num=$1
  rev=0
  while [ $num -gt 0 ]
  do
    rem=$((num%10))
    rev=$((rev*10+rem))
    num=$((num/10))
  done
  echo $rev
}

echo "Enter a number:"
read num

if is_prime $num
then
  echo "$num is prime"


  palindrome=$(get_palindrome $num)
  echo "Palindrome of $num is $palindrome"


  if is_prime $palindrome
  then
    echo "$palindrome is also prime"
  else
    echo "$palindrome is not prime"
  fi
else
  echo "$num is not prime"
fi
