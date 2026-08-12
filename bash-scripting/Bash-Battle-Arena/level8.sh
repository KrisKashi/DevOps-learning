#!/bin/bash

echo "Please enter a directory to search:"
read DIR

if [ ! -d "$DIR" ];then       #Checks if directory exists
    echo "Invalid Directory"
    exit 1
fi    

echo "Please enter phrase to search files for "
read PHRASE
grep -l "$PHRASE" "$DIR"/*.log # Grep -l shows only the filenames, we use phrase to search for phrase, directory, and *.log for all log files




