#!/bin/bash

set -e    #-e means exit when error occurs
echo "Hello.."
echo "Before error.."
ccaffjl;dnf # here shell understands there is an error and signal is ERR
echo "After error"