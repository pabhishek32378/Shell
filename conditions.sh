#!/bin/bash

number=$1

if [ $number -lt 10 ]; then
    echo "The given number $number is less than 10"
else
    echo "The given number $number is greater than or equal to 10"
fi 
