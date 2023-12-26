#!/bin/bash

# Check if the user is root
if [[ $EUID -ne 0 ]]; then
    echo "You must be root to run this script."
    exit 1
fi

# Prompt for username
read -p "Enter username: " username

# Validate username input
while [ -z "$username" ]; do
    read -p "Please enter a valid username: " username
done

# Prompt for password
read -s -p "Enter password: " password
echo

# Validate password input
while [ -z "$password" ]; do
    read -s -p "Please enter a valid password: " password
    echo
done

# Prompt for user permissions
read -p "Enter user permissions (e.g., 7 for read, write, and execute): " user_permissions

# Prompt for group permissions
read -p "Enter group permissions: " group_permissions

# Prompt for other permissions
read -p "Enter other permissions: " other_permissions

# Display user information
echo -e "\nUser successfully created!"
echo "Username: $username"
echo "Home directory: /home/$username"
echo "User permissions: $user_permissions"
echo "Group permissions: $group_permissions"
echo "Other permissions: $other_permissions"
