#!/bin/bash

USERID=$(id -u)
#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


if [ $USERID -ne 0 ]; then
    echo "error:: please run this script with root privilages"
    exit 1 
fi

VALIDATE(){  #Create a function
    if [ $1 -ne 0 ]; then
        echo -e "Installing $2..........$R failure $N"
        exit 1
    else
        echo "installing $2 .... $G sucess $N"
    fi
}

dnf list installed mysql
# Install if it is not found
if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "MYSQL"      # calling the function and passing inputs
else
    echo -e "Mysql already exist ... $Y skipping $N"
fi

dnf list installed nginx
# Install if it is not found
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo -e "nginx already exist ... $Y skipping $N"
fi

dnf list installed python
# Install if it is not found
if [ $? -ne 0 ]; then    
    dnf install python3 -y
    VALIDATE $? "python3"
else
    echo -e "python already exist ... $Y skipping $N"
fi