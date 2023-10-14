#!/bin/bash

# Author: Satyam Tripathi
# Description: Schedule script through cron job and notify to user
# Date: 10/3/2023

# crontab -l
# crontab -e [enter]
# 34 20 * * * /home/satyam/scripts/remote_ping > ping-output
# if not specifying the absolute path for the output file it will be created in user home 

34 20 * * * /home/satyam/scripts/remote_ping | mail -s "Connectivity status" email
