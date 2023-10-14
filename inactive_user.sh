#!/bin/bash

# Author: Satyam Tripathi
# Description: Script to disabel inactive users from certain amount of time.
# Date: 08/08/2023

a = `lastlog | tail -n+2 | grep 'test' | awk '{print $1}'`

# lastlog -b 90 will show users list who has not loggedin in last 90 days
# using for look to itrate tail -n+2 will remove the top description.

for i in $a
do
    # echo $i lists all the disabling accounts
    usermod -L $1 # disbale the account.
done

# grep uid /etc/shadow
# !UID means it's disbaled.
# remove the ! from /etc/passwd it will enable the user
 

# disable account without using for loop, single line command

lastlog | tail -n+2 | grep 'test' | awk '{print $1}' | xargs -I() usermod -L ()
