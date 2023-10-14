# Author : Satyam Tripathi
# Description : Creates a system inventory or a form which can be used in later 
# Date Modified : 13/10/2023

# add record, delete record, both combined 

#!/bin/bash

# touch database -> empty file 

echo "please enter a hostname?"
read host
echo # adds empty line 

grep -q $host /path/database.txt  # grep the hostname from the file

if [ $? -eq 0 ]
then
    echo "Hostname already present!!"
    echo # for next empty line
    exit 99
fi


# Take the IP address 

echo "Please enter the IP address"
read IP
echo 

grep -q $IP /path/database.txt # grep the IP from the database file

if [ $? -eq 0]
then
    echo "IP address already present!!"
    echo
    exit 99
fi

echo "please enter a description"
read description
echo 

# adding all to inventory file 

echo $host $IP $description >> /path/database.txt
echo "The provided record has been added!!"
echo