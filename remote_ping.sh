#!/bin/bash

# Author: Satyam Tripathi
# Date: 10/2/2023
# Description: ping a remote host and notify

ping -cl 192.168.1.1 &>/dev/null #local ip

if [ $? -eq 0 ]
then
echo "ping successfull"
else
echo "ping not successfull"
fi

# chmod +x remote_ping.sh
