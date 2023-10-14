#!/bin/bash

# Author: Satyam Tripathi
# Date: 11/3/2023
# Description: Directory assignment

# match the users from /etc/passwd to /usr/home if not matching delete that user

# user must be root

cd /home # going inside home dir
# mkdir ram
# grep ram /etc/passwd --> checking for the user present or not

# toggle screen cast mode
for DIR in * # checking all the user dir's
do 
    chk=$(grep -c "/home/$DIR" /etc/passwd) # checking if user dir is present matching with /etc/passwd
    if [ $chk -ge 1 ] # if count is 1 or greater user is found else not found
    then
        echo "$DIR is assigned to a user"
    else
        echo "$DIR is not assigned to a user"
    fi
done
