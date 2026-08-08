
# Bandit OvertheWire linux fundementals and key takeaways

Level 1 - 

used pwd to find where I was in the filesystem
I was already in home so I used ls to list files
I found readme and used cat to view it which contained the password for the next level

Level 2 -

Dashed file cannot be accessed reguarly using cat
solutions : reference absolute path  cat ./-
            direct cat to - = cat < -

Level 3 - 

Filename is called --spaces in this filename--

solution : reference absolute path and then use \ to reference the spaces in the file
            cat ./--spaces\ in\ this\ filename--


level 4

File is located in a directory and is hidden 

Solution - Navigate to the directory using cd, use ls -a to view hidden files and then use cat to view the file

cd inhere
ls -a 
cat ...Hiding-From-You


level 5

file in inhere and is the only human readable file 

Solution : We use the file command to see all the files and see which contains readable data 

Solution:
cd inhere
ls -a
file ./*
file07 contains ascii text
cat ./-file07 (dashed file)

Level 6

File is stored somewhere in directory and is
human readable 
1033 bytes of size 
not executable

Solution: used find . -type f -size 1033c 
pXa26xhMWaC2SvDotA4r9EgZkulOeSBW

to find all files with specifically 10333 bytes in size
returned one result so I just needed to navigate to that dircetory and then use cat on the file.


Level 7 

file is owned by user bandit7
group bandit 6
33 bytes in size 

solution : we use the command find again here combining these 3 filters, also located anywhere in the server so we use / to denote this
            find / -type f -user bandit7 -group bandit 6 -size 33c

Bmnnvf82KzQlfxgAI2d1zYbr1u9pr3E3

Level 8             


file is stored in the data.txt next to the word millionth 

solution :

use grep millionth data.txt

returns millionth and next to it was the password


level 9 - bandit 8 VR1ljMayciFxbnUokuQmJFw6QC9VKtub

file is stored in data.txt and is the only unique line

solution :

use the sort commmand along with uniq  to get the unique values

sort data.txt |uniq -u


UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR
UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR.



bandit9:

password is stored in data.txt and is one of the few human readable strings preceded by several ==

solution

- use the strings command to find readable human strings in the file 

- use the grep command with multiple == and locate the password as it follows a similar pattern



B0s2khmbT9u0geKuOoVGW3JZKhndE3BG


level 9-10
bandit10

The password is in data.txt and is base64 encoded

solution : We use the decode command with the file to extract it

        base64 -d data.txt

        The password is pYfOY6HwUsDj5rL9UvyhU7MCmv8vN5Ro


level 11-12        

The password is in data.txt where all characters have been translated bty 13 positions (EG, A =M)

Solution: cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'

- Pipes the data from the .txt into translate command  mapping A-Z in two parts, letters A-M are mapped to N-Z, then N-Z maps to A-M as it would overrun.

GROozWPO8QyN0mGrjUkID0WCYkZiQxrN

Level 12-13

File is a hexdump thats been repeatedly compressed

Solution :

- Reverse the Hexdump, use file to find outs its a .gz file, use mv to rename it and gzip to decompress,repeat the process to find out its a bzip2 file, decompress it using bzip2, find out its a tar file, rename it , extract using tar, we get data5.bin, where we use file to find out its a .tar file, so we repeat the process and get data6.bin, which is a bzip2, so we repeat and use bzip2 to extract it, which gives us data6 a tar file, we repeat the renaming and extract using tar, giving us data 8.bin, a gzip which we extract giving us data.tar, using tar we extract that and get data.txt which contains the password


overall repeititon pattern : 

- Use file to find out the filetype (names can be misleading)

- use .mv to change the filetype if needed

- Use the relevant tool to extract it (open Manual if confused)


qQYQiHOBPR8zR61qxYqX45quvihF2uzk

- Key takeaway - organise workspace for cleaner output


level 13-14

Password is stored in a file only bandit14 can access, we are bandit13 but have an sshkey file on our home directory, we use this to connect as bandit14 on the server,

solution :

use scp to copy the ssh file over to our local machine 
change permissions so its usable by only the owner
use it to connect to bandit14
retrieve the password

scp -P 2220 bandit13@bandit.labs.overthewire.org:/home/bandit13/sshkey.private .
chmod 600 sshkey.private
ssh -i sshkey.private bandit14@bandit.labs.overthewire.org -p 2220
cat /etc/bandit_pass/bandit14

aaWecNkG4FhxJQxz07uiwzVP6bJiYS65


Level 14-15

Password retrieved by submitting the password of the current level to port 30000 on localhost

solution : we use nc to connect to local host 30000 enter the password and get the new one

nc localhost 30000

Takeaways: Nc can be used to exchange data over network connection directly

pbLYuZtTg4MgaqfJx8jbA9gKKGqM68A7

Level 15-16

Password is found by submitting the current password to port 30001 using ssl 

solution : ncat --ssl localhost 30001

