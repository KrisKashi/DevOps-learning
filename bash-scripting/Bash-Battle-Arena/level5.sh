#!/bin/bash

mkdir Battlefield
touch Battlefield/knight.txt Battlefield/sorcerer.txt Battlefield/rogue.txt # Makes text files in one command in the directory
if [ -f Battlefield/knight.txt ];then # Checks if Knight.txt in battlefield directory
    mkdir -p Archive ;mv Battlefield/knight.txt Archive/knight.txt
     
fi
echo "Listing contents of directories Battlefield and Archive"
ls Battlefield # Contents of both battlefield and archive 
ls Archive
