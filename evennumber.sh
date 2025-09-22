#!/bin/bash

echo "please enter the numb"
read number

if [ $(($number % 2)) -eq 0 ]; then
    echo "given number $number is even"
else
    echo "given number $number is odd"
fi