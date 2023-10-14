#!/bin/bash

# Author: Satyam Tripathi
# Date: 11/3/23
# Description: copy files to diffrent remote servers

for i in redhat1 redhat3 redhat4 # 4 servers
do 
    scp somefile $i:/tmp # copying the file on the server /tmp dir
done

# doing above operation with files

host=`cat /home/satyam/host.txt` # hosts are stored in this file

for i in $host
do 
    scp somefile $i:/tmp # copying the file on the server /tmp dir
done

