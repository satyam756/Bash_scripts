#!/bin/bash

# Author: Satyam Tripathi
# Description: Copy files from one path to another path inside a foldername provided by user
# Date: 18/10/2023

filename=$1 # input file name which is having list of all the files which needs to be copied from src to destination.
foldername=$2 # folder name in which the files will be copied from src 
src_loc="/path of source files"
dest_loc="/path of destination location"
script_loc="/path of script location" # needed if running the script via jcl.

mkdir dest_loc/foldername # creating the folder inside destination location.

(cat $script_loc/$filename) | while read line
do
    echo $line
    find $src_loc/ -name $line -exec cp -t $dest_loc/$foldername '{}' \;
done
