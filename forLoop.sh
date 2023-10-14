#!/bin/bash

# Author: Satyam Tripathi
# Date: 11/3/2023
# Description: For loop script for files and dir in linux
#              create multiple files with diffrent names
#              create multiple files with user input
#              assign execute permission to all the files
#              time taken to assign permision
#              Rename all *.txt files extentions to others
#              check to see if files exist 


for i in {1..20} # 1 to 20 values are in i 
do
    echo $i # displaying the numbers present in i var
    sleep 1 # read one letter sleep for 1 second
done


# Creating multiple files 

for files in {1..10}
do
    touch Satyam.$files.txt # creating Satyam1.txt to Satyam.10.txt files
done

# Creating multiple files with user input

echo "How many files do u want?" # asking user for file count
read c # storing count in var c
echo 
echo "Please enter the prefix here:" # prefix input
read s # reading the prefix 

for i in ${seq 1 $c} # 1 to user input count
do 
    touch $s.$i.txt # prefix.num.txt
done

# Assign permission to all the files

for i in satyam.*
do
  echo "Assigning execute permision to" $i 
  chmod a+x $i
  sleep 1
done

# Time taken to assign permission

Total=`ls -l satyam.* | wc -l` # taking words count of files present in dir with satyam

echo "it will take $Total seconds to assign permission..."
echo 
for i in satyam.*
do
    echo "Assigning permission to" $i
    chmod a+x $i
    sleep 1
done

# Rename all *.txt files with other extentions

for filename in *.txt
do
    mv $filename ${filename%.txt}.ext
done

# Check to see if file is present

files="/etc/passwd
/etc/group
/etc/shadow
/etc/nsswitch.conf
/etc/sshd_ssh_config
/etc/fake"

echo 
for file in $files
do
    if [ ! -e $file ]
    then
        echo $file" File doesn't exist"
    fi
done
