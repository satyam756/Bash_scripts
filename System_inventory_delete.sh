#!/bin/bash

# Author: Satyam Tripathi
# Description: Deletes the files from inventory database file
# Date Modified: 14/10/2021

clear # clears the screen
echo "Please enter hostname or IP address"
read hostIP
echo 

# grep the database file

grep -q $hostIP /path/database

if [ $? -eq 0]
then
    echo
    sed -i '/'$hostIP'/d' /path/database #global search in file for hostIP adnd once found delete that data from the file 
    echo "$hostIP has been deleted!!"
else
    echo "Record $hostIP does not exist!!"
fi



