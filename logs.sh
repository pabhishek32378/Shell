#!/bin/bash

USERID=$(id -u)
#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER
echo "Script started executed at: $(date)"

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

dnf list installed mysql &>>$LOG_FILE
# Install if it is not found
if [ $? -ne 0 ]; then
    dnf install mysql -y &>>$LOG_FILE
    VALIDATE $? "MYSQL"      # calling the function and passing inputs
else
    echo -e "Mysql already exist ... $Y skipping $N"
fi

dnf list installed nginx &>>$LOG_FILE
# Install if it is not found
if [ $? -ne 0 ]; then
    dnf install nginx -y &>>$LOG_FILE
    VALIDATE $? "nginx"
else
    echo -e "nginx already exist ... $Y skipping $N"
fi
