#!/bin/bash

function is_valid_temperature {
  temp=$1
  if [ $temp -lt 0 ] || [ $temp -gt 100 ]
  then
    return 1
  fi
  return 0
}

echo "Enter a temperature:"
read temp

echo "Select conversion:"
echo "1. Celsius to Fahrenheit"
echo "2. Fahrenheit to Celsius"
read choice

case $choice in
  1)
    if ! is_valid_temperature $temp
    then
      echo "Error: temperature must be between 0°C and 100°C"
      exit 1
    fi
    degF=$(echo "scale=2; ($temp * 9/5) + 32" | bc)
    echo "$temp°C is $degF°F"
    ;;
  2)
    if ! is_valid_temperature $temp
    then
      echo "Error: temperature must be between 32°F and 212°F"
      exit 1
    fi
    degC=$(echo "scale=2; ($temp - 32) * 5/9" | bc)
    echo "$temp°F is $degC°C"
    ;;
  *)
    echo "Error: invalid choice"
    exit 1
    ;;
esac
