# Author: Satyam Tripathi
# Description: Check number of files and staus | schedule and notify 
# Date Modified: 13/10/2023

#!/bin/bash 

# create some files # touch files{1..20}.txt
# CountFiles script 

# define a variable to compare

a = `ls -l file* | wc -l` #20 files 

if [ $a -eq 20]
then 
    echo "yes there are $a files"
else
    echo "Files are less then 20"
fi

