#!/bin/bash

read -p "Enter number: " num;

if [ $num -eq 1 ]; then
    echo "January"
elif [ $num -eq 2 ]; then
    echo "February"
elif [ $num -eq 3 ]; then
    echo "March"
elif [ $num -eq 4 ]; then
    echo "April"
elif [ $num -eq 5 ]; then
    echo "May"
elif [ $num -eq 6 ]; then
    echo "June"
elif [ $num -eq 7 ]; then
    echo "July"
elif [ $num -eq 8 ]; then
    echo "August"
elif [ $num -eq 9 ]; then
    echo "September"
elif [ $num -eq 10 ]; then
    echo "October"
elif [ $num -eq 11 ]; then
    echo "November"
elif [ $num -eq 12 ]; then
    echo "December"
else
    echo "Invalid input"
fi
