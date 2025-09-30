#!/bin/bash

NAME=INDIA  #define variable
echo "My Country: $NAME"  # print the variable
echo "PID of SCRIPT-1: $$"  # processinstace ID of currentscript
#sh script-2.sh   # to call script2 from script1
source ./script-2.sh # It loads whatever is inside script-2.sh into your current terminal session.