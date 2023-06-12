#!/bin/bash


function are_palindromes {
  num1=$1
  num2=$2


  rev=0
  temp=$num1
  while [ $temp -gt 0 ]
  do
    rem=$((temp%10))
    rev=$((rev*10+rem))
    num1=$((temp/10))
  done

  if [ $rev -eq $num1 ]
  then
    return 1
  fi


  rev=0
  while [ $num2 -gt 0 ]
  do
    rem=$((num2%10))
    rev=$((rev*10+rem))
    num2=$((num2/10))
  done

  if [ $rev -ne $num1 ]
  then
    return 1
  fi

  return 0
}


if are_palindromes 121 323
then
  echo "121 and 323 are palindromes"
else
  echo "121 and 323 are not palindromes"
fi

if are_palindromes 12321 32124
then
  echo "12321 and 32124 are palindromes"
else
  echo "12321 and 32124 are not palindromes"
fi
