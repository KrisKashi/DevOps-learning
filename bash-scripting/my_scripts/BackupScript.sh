: '

Create a script that backs up all .txt files from one directory to another.

Requirements

Prompt user for source directory

Create a backup directory if it does not exist

Copy all .txt files to the backup directory

Add timestamp to backup directory name

Display count of files backed up

'

local File_Path
count = 0
echo " Please enter source directory for backup:"
read File_Path
mkdir "$File_path"-backup
cp "$File_path"/*.txt "$File_path"-backup
mv "$File_path"-backup backup-$(date +"%m-%d-%y-%r")
