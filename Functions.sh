#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "error:: please run this script with root privilages"
    exit 1 
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "error:: Installing $2 is failure"
        exit 1
    else
        echo "installing $2 is sucess"
    fi
}


dnf install mysql -y
VALIDATE $? "MYSQL"

dnf install nginx -y
VALIDATE $? "nginx"

dnf install mongodb-mongoshx -y
VALIDATE $? "mongodb-mongoshx"
