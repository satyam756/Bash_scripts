#!/bin/bash

# Author: Satyam Tripathi
# Date: 11/3/2023
# Description: Get the user list who are logged in specific date and month

# last command used to check users logged in with machine ip and date 


today=`date | awk '{print $1,$2,$3}'` # taking date storing in variable today 

last | grep "$today" # last | grep "SAT MAR 11"
last | grep "$today" | awk '{print $1}' # only user names who are logged in 

# with user name pull out the information 

echo "please enter the day (e.g. Mon)"
read day
echo
echo "please enter month (e.g. Aug)"
read month
echo
echo "please enter date (e.g. 11)"
read Date
echo 

last | grep "$day $month $Date" # all info
last | grep "$day $month $Date" | awk '{$1}' # only usernames

# for more automation can use crontab 
