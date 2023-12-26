#!/bin/bash
who=$(whoami)
user_validation=$(getent passwd | grep $username)

if [ ${who} == "root" ]; then

    echo "your are a root user"

else 
    echo "your are not root user please switch to root"

fi    
read -p "Enter User name :" username
echo
while true; do

    if [ -z $username ]; then

        read -p "Username should not be empty: " username
        echo
    else
     echo "username is:" $username

    fi

    if [ ${user_validation} -eq 0 ]; then

        echo "user existed Please enter another user name"
        exit 1
    else
        echo " $username is new user please proceed"
    fi        
    
done         
