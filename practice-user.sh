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

    echo "$2 .... Failed"
else
     echo "$2 ... Success"
fi        

}
read -p "Enter User name :" username
echo

getent passwd | greap $username
validation $? "user creation"
         
