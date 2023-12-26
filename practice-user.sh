#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

who=$(whoami)
user_validation=$(getent passwd | grep $username)

if [ ${who} == "root" ]; then

    echo "your are a root user"

else 
    echo "your are not root user please switch to root"

fi

validation () {

if [ $1 -ne 0 ]; then

    echo -e "$2 .... ${GREEN}is not existed Please proceed"
else
     echo -e "$2 ... ${RED}existed"
     exit 1
fi        

}
echo -e "${YELLOW}Please verify frist user is existed or not in system "

read -p "Enter new User name :" username
echo

getent passwd ${username}
validation $? "user"

useradd ${username}
echo "${username} added successfully"
