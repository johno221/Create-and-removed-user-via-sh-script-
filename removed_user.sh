#!/bin/bash
# Script to add a user to Linux system including passsword
# ------------------------------------------------------------------

if [ $(id -u) -eq 0 ]; then
    read -p "Enter username : " username
    egrep "^$username" /etc/passwd >/dev/null
    if [ $? -eq 0 ]; then
        userdel -r "$username"
        [ $? -eq 0 ] && echo "User has been removed from system!" || echo "Failed to removed a user!"
    else
        echo "$username does not exists!"
	exit 1
     fi
else
        echo "Only root may add a user to the system."
        exit 2
fi
