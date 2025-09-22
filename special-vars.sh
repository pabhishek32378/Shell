#!/bin/bash


echo "All variables passed to the Script: $@"
echo "All variables passed to the Script: $*"
echo "Script name: $0"
echo "current directory: $PWD"
echo "who is running the script: $USER"
echo "Home directory of the user: $HOME"
echo "PID of this script: $$"
sleep 50 &   
echo "PID of last commnad in the background" is: $!"