#!/bin/bash


echo "Enter Directory Path to sort text files"
read DIR

if [ ! -d "$DIR" ];then # -d checks if something is a directory like -f checks files
    echo "Directory is invalid!"
    exit 1
fi

echo "Sorting Text files in descending order:"
for file in $(ls -Sr "$DIR"/*.txt);do # ls -Sr "S" sorts by size and r reverses it *.txt used to gather all text files
    echo "$(basename "$file")" # Basename strips the directory path from the result for a cleaner look
done    