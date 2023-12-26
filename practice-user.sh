#!/bin/bash
ID=$(id -u)

if [ $ID -ne 0 ]; then

    echo "You must switch into root account"
    exit 1
fi   

read -p "Enter Username: " username
echo

while [ -z "$username" ]; do

    read -p "Please Enter Username: " username
    
    id $username
    
    if [ $? -ne 0 ]; then
        echo "this user new user"
    else
        echo "user existed"
        exit 1
    fi       
    
done

read -p "Enter password: " password
echo

while [ -z "$password" ]; do

    read -s -p "Please Enter Password: " password
    
done
read -P "Enter User permissions: " userpermissions
echo
read -P "Enter User permissions: " grouppermissions
echo
read -P "Enter User permissions: " otherpermissions
echo

while [ -z "$username" ]; do

    read -p "Please Enter Username: " username
    
done    

while [ -z "$password" ]; do

    read -s -p "Please Enter Password: " password
    
done 
