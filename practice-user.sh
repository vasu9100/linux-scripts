#!/bin/bash
who=$(whoami)

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
     exit 1

    fi
done         
