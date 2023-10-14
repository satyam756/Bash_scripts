#!/bin/bash

# Author: Satyam Tripathi
# Date: 11/3/2023
# Description: create a user with username from user and check if user already exist exit the script with user id and description

 echo "Please provide a username:" # ram
 read u
 echo 
 useradd $u # ram
 echo $u "account has been created" #ram

# grep ram /etc/passwd -> ram:x:1003:1003::home/ram:/bin/bash


# checking for the username if already exist then errorout and exit

echo "Please provide a username:"
read u
echo

grep -q $u /etc/passwd # -q is silent mode checking
if [ $? -eq 0]
then
    echo "Error -- User $u already exits"
    echo "Please choose another username"
    echo
    exit 0
else
    useradd $u
    echo "$u account has been added"
fi


# create user with discription

echo "Please provide a username:"
read u
echo

grep -q $u /etc/passwd # -q is silent mode checking
if [ $? -eq 0]
then
    echo "Error -- User $u already exits"
    echo "Please choose another username"
    echo
    exit 0
else
    echo "please provide user description"
    read d
    echo
    useradd $u -c"$d"
    echo $u" account has been created"
fi
#  grep $u /etc/passwd

# create user with userid and not with default id given by linux

echo "Please provide a username:"
read u
echo 

grep -q $u /etc/passwd # -q is silent mode checking
if [$? -eq 0]
then
    echo "Error -- User $u already exists"
    echo "Please choose another username"
    echo
    exit 0
fi

echo "please provide a description"
read d
echo

echo "Do you want to specify user ID (y/n)?"
read yon
echo 
    if [$yon == y]
    then
        echo "please enter UID"
        read uid

        useradd $u -c "$d" -u "$uid"
        echo
        echo $u "account has been created"

    elif [ $yon == n ]
    then
        echo "creating $u with defult UID"
        echo
        useradd $u -c "$d"
        echo $u "has been created"
    fi
# linux takes id's from last, if the last id is 10 it will take next id from 11.


# create user with userid and not with default id given by linux and error out if id already exists

#!/bin/bash

# Author: Satyam Tripathi
# Date: 24/7/2023
# Description: add user with description and specific id error out if linux id already exist or user already exist

echo "Please provide a username"
read u
echo

grep -q $u /etc/passwd
    if [ $? -eq 0]
    then
        echo "Error -- User $u already exist"
        echo "Please choose another username"
        echo 
        exit 0
    fi

echo "Please provide user description"
read d
echo 

echo "Do you want to specify user ID?"
read yon
echo
if [$yon == y]
then
    echo "please enter a UID"
    read uid
    grep -q $uid /etc/passwd
    if [$? -eq 0]
    then
        echo "Error -- UserID $uid already exists"
        echo
        exit 0
    else
        useradd $u -c "$d" -u $uid
        echo
        echo "$u account has been created"
        fi
elif [$yon == n]
then
    echo "Creating user $u without specific ID"
    echo
    useradd $u -c "$d"
    echo
    echo "$u account has been created"
fi


    


