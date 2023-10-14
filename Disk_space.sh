#!/bin/bash

# Author: Satyam Tripathi
# Description: Manage the Disk/storage space.
# check for disk space.
# Date: 8/8/2023

# df -> disk free
# du -> disk usage

# df -h | egrp -v "tmpfs|devtmpfs" # tmpfs and devtmpfs is not required
# df -h | egrp -v "tmpfs|devtmpfs" | tail -n+2 # removes the header
# df -h | egrp -v "tmpfs|devtmpfs" | tail -n+2 | awk '{print $5}' # shows only the usage%
# df -h | egrp -v "tmpfs|devtmpfs" | tail -n+2 | awk '{print $5}' | cut -d'%' -f1 # removes the % sign 
a=`df -h | egrp -v "tmpfs|devtmpfs" | tail -n+2 | awk '{print $5}' | cut -d'%' -f1 `

for i in $a
do
    if [ $i -ge 80]
    then
        echo "check disk space $i `df -h | grep $i`"
    fi
done

# Final script 

df -H | grep -vE 'Filesystem|tmpfs|cdrom' | awk '{print $5 $1}' | while read output
do
    usep=$(echo $output | awk '{print $1}' | cut -d'%' -f1 )
    partition=$(echo $output | awk '{print $2}' )

    if [$usep -ge 90]
    then
        echo "running out of space \ "$partition ($usep%)\" on $(hostname) as on $(date)"
    fi

done


# Last Script

echo "Starting the script"
echo 
echo "following is the disk staus"
echo 
df -h | awk '0+$5 >= 60 (print)' | awk '{print $5,$6}'

echo "Script completed" 
