#!/bin/bash

number=$1

if [ $number -lt 10 ]; then
    echo "The given number $number is less than 10"
elif [ $number -eq 10 ]; then
    echo "given number $number is equal to 10"
else
    echo "The given number $number is greater than to 10"
fi 
