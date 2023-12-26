#!/bin/bash
who=$(whoami)
user_validation=$(getent passwd | grep $username)

if [ ${who} == "root" ]; then

    echo "your are a root user"

else 
    echo "your are not root user please switch to root"

fi

validation () {

if [ $1 -ne 0 ]; then

    echo "$2 .... is not existed Please proceed"
else
     echo "$2 ... existed"
     exit 1
fi        

}
echo "Please verify frist user is existed or not in system "

read -p "Enter new User name :" username
echo

getent passwd ${username}
validation $? "user"

useradd ${username}
