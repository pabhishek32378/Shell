#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "error:: please run this script with root privilages"
    exit 1 
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "error:: Installing mysql is failure"
    exit 1
else
    echo "installing mysql is sucess"
fi

dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "error:: nginx installing  is fail"
    exit 1
else
    echo "nginx install is sucess"
fi

dnf install mongodb-mongoshx -y

if [ $? -ne 0 ]; then
    echo "error:: mongodb-mongoshx installing  is fail"
    exit 1
else
    echo "mongodb-mongosh install is sucess"
fi