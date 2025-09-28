#!/bin/bash

set -e    #-e means exit when error occurs
# error(){
#    echo "there is an error in $LINENO, Command is: $BASH_COMMAND"
# }

trap 'echo "there is an error in $LINENO, Command is: $BASH_COMMAND"' ERR
echo "Hello.."
echo "Before error.."
ccaffjl;dnf # here shell understands there is an error and send signal 'ERR' then automatically Trap command will execute
echo "After error"