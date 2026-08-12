#!/bin/bash

mkdir Arena_boss

for ((i=1; i<=5; i++));do. #Sets range to 5 files
    touch Arena_boss/file"$i".txt    
lines=$((RANDOM %11+10))  #Sets range to 10-20 as modulus of 11 is 1-10, adding 10 changes it to 10-20
for ((l=1; l<=$lines; l++));do # New range l- random number (10-20)
echo $l >> Arena_boss/file$i.txt # 
done
done #close both loops

ls -S Arena_boss/*.txt # Sorts text files by size 
mkdir Victory_Archive
for ((i=1; i<=5; i++));do 
if grep -q 'Victory' Arena_boss/file"$i".txt;then #Searches the text files individually for the phrase victory
mv Arena_boss/file"$i".txt Victory_Archive
fi
done

# Note : its important we do it individually as a loop here so its easier to move the files across
# Otherwise would have to combine grep and mv multiple files makes less sense/ error prone 




