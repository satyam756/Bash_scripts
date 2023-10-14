#!/bin/bash

# Author: Satyam Tripathi
# Date: 11/3/2023
# Description: Script to trace /var/log/messages files
#              Runs in background and checks for errors if any
#              User/Admin notification
#              Schedule the script through cronjob/crontab


# user should be root to read var/log/messages

# sample command:
#   cat /var/log/messages | grep -i error # all the errors are catlisted 


tail -fn0 /var/log/messages | while read line # latest error messages
do
echo $line | egrep -i "refused|invalid|error|fail|lost|shut|down|offline" # keywords to look on the file and based on that generate filtered file
    if [ $? = 0 ] # if any keyword is found in log
    then
        echo $line >> /tmp/filtered-messages # redirect that line in this file
    fi # end if
done # end loop

# logger -t error "Satyam is testing"
# nohup /root/Central_Logging.sh & -> run process in background
# ps -ef | grep Central_Logging
# fg -> to bring the process in foreground


# Log alert

# sends an email to adminstrator

IT="email1,email2" # Admin users to send email if log generates

if [ -s /tmp/filtered-messages ] # if the file is present check
then
    cat /tmp/filtered-messages | sort | unique | mail -s "Syslog Message" $IT
    rm /tmp/filtered-messages
    else
    fi


# Cronjob setup to run every 15 minutes

# */15 * * * * /root/Log-Alert
