#!/bin/bash

# Author: Satyam Tripathi
# Description: Creates the inventory based on user choice add or delete the records from the database file
# Date modified: 14/10/2023
# keep the System_inventory and System_inventory_delete script in same path 
clear # Clears the screen
echo
echo "Please select one of the following options:"
echo
echo "A | a: add a record"
echo "D | d: delete  a record"
echo 
read choice
case $choice in
    a|A) /path/System_inventory.sh;;
    d|D) /path/System_inventory_delete.sh
    *) echo "Invalid choice - Bye"
esac
 