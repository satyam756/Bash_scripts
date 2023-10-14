#!/bin/bash

# Author: Satyam Tripathi
# Date: 10/3/2023
# Description: Deletes the old files with specified date 
#              find and delete files older than 90 days
#              find and rename old files

# test creating file with older date

touch -d "Thu, 1 march 2018 12:30:00" satyam.txt
touch -d "Thu, 1 march 2018 12:30:00" satyam.txt1
touch -d "Thu, 1 march 2018 12:30:00" satyam.txt2

# finding the files in specified path with date 

find /home/satyam/delete_files -mtime +90 -exec ls -l {} \;

# rename the files before deleting 
find /home/satyam/delete_files -mtime +90 -exec mv {} {}.old \;


# deleting the files which are returned with above command
find /home/satyam/delete_files -mtime +90 -exec rm -l {} \;



