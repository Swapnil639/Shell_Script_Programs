#!/bin/bash

echo "Select a conversion option:"
echo "1. Feet to Inch"
echo "2. Feet to Meter"
echo "3. Inch to Feet"
echo "4. Meter to Feet"

read -p "Enter your choice (1-4): " choice
read -p "Enter the length value: " length

case $choice in
    1)
        result=$(echo "$length * 12" | bc)
        echo "$length feet = $result inches"
        ;;
    2)
        result=$(echo "$length * 0.3048" | bc)
        echo "$length feet = $result meters"
        ;;
    3)
        result=$(echo "$length / 12" | bc)
        echo "$length inches = $result feet"
        ;;
    4)
        result=$(echo "$length / 0.3048" | bc)
        echo "$length meters = $result feet"
        ;;
    *)
        echo "Invalid input. Please enter a number between 1 and 4."
        ;;
esac
