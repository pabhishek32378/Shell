#!/bin/bash

number1=100
number2=200
name=Devops
SUM=$(($number1+$number2+$name))

echo "The SUM is: ${SUM}"

Leaders=("Modi" "Putin" "Trump" "VB")

echo "All leaders: ${Leaders[@]}"  #@-> ALL