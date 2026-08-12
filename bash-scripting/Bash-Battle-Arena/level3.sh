#!/bin/bash

DIR=/Users/kriskashi/Desktop/DevOps-learning/bash-scripting/Bash-Battle-Arena/Arena/hero.txt #sets directory
if
find -f "$DIR";then
    echo "Hero found!"   # returns hero found if found , else hero missing
else
    echo "Hero Missing!"
fi    