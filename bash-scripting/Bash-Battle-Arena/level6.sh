#!/bin/bash

if [ -z "$1" ];then # exits if no argument is put through
    echo "No file provided"
    exit 1


elif [ ! -f "$1" ];then # handling if file not found
    echo "File not found"
    exit 1

else
    LINE_COUNT=$( wc -l < "$1" ) # Passing it througn makes it cleaner for wc -l to just print the number w/o file 
    echo "Lines in "$1" is "$LINE_COUNT""


fi