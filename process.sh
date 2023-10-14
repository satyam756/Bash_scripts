#!/bin/bash

# Author: Satyam Tripathi
# Description: find and stop/kill the zombie process which is running unnecessrily.
# Date: 8/8/2023

# any thing which is consuming the memory in unix is known as process.
# run via root.

# sleep 600 -> process will inovke and terminal will be in sleep for 10 minutes
# ps -ef | grep "sleep 600"
# ps -ef | grep "sleep 600" | grep -v grep # removes grep as process from the list.
# ps -ef | grep "sleep 600" | grep -v grep| awk '{print $2}' # removes grep as process from the list and filters the process number
# ps -ef | grep "sleep 600" | grep -v grep| awk '{print $2}' | xargs -I() echo()
ps -ef | grep "sleep 600" | grep -v grep| awk '{print $2}' | xargs -I() kill()


