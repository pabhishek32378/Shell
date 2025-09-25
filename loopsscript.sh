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
echo "Script started executed at: $(date)" | tee -a $LOG_FILE

if [ $USERID -ne 0 ]; then
    echo "error:: please run this script with root privilages"
    exit 1 
fi

VALIDATE(){  #Create a function
    if [ $1 -ne 0 ]; then
        echo -e "Installing $2..........$R failure $N" | tee -a $LOG_FILE
        exit 1
    else
        echo "installing $2 .... $G sucess $N" | tee -a $LOG_FILE
    fi
}

for package in $@  #$@ means if you want all variables passed to script
do
    # check package is already installed or not
    dnf list installed $package &>>$LOG_FILE

    # if exit status is 0 then already installed. If its -ne 0 need to install it
    if [ $? -ne 0 ]; then
        dnf install $package -y &>>$LOG_FILE
        VALIDATE $? "$package"
    else
        echo -e "$package already installed...$Y skipping $N"
    fi
done