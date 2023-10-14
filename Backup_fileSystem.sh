#!/bin/bash

# Author: Satyam Tripathi
# Date: 10/3/2023
# Description: Creating backup of file system (var/etc)

# creating backup.tar file and storing in /tmp dir with /etc and /var backed-up

tar cvf /tmp/backup.tar /etc /var

# compressing the tar file ie backup.tar

gzip /tmp/backup.tar # backup.tar.gz

# transfering the file from local to other system today's created files

find backup.tar.gz -mtime -1 -type f -print &> /dev/null

if [ $? -eq 0]
    then
        echo "Backup was created"
        echo -e "\n"
        echo "Archiving the backup"
        ftp /tmp/backup.tar.gz root@192.168.1.1:/path
    else
        echo "Backup failed"
fi

