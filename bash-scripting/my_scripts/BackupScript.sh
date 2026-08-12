: '

Create a script that backs up all .txt files from one directory to another.

Requirements

Prompt user for source directory

Create a backup directory if it does not exist

Copy all .txt files to the backup directory

Add timestamp to backup directory name

Display count of files backed up

'


Backupfiles(){

local File_Path
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
# Its important to set the variable for timestamp first so you can refer to it easier after

echo "Please enter source directory for backup:"
read File_Path      # Takes user input as File_Path
DIR="$File_Path"-backup-"$timestamp"         # We set directory here so that it has file_path, earlier wouldve made it empty 
mkdir "$DIR" 
cp "$File_Path"/*.txt "$DIR"                #Copies all text files to backup directory
echo "Backed up "$( find "$DIR" -type f | wc -l )" files" # Counts how many files backed up

}

Backupfiles
