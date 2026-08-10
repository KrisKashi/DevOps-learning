: '

Task :

    Create a script that checks if a file exists and displays its permissions.

Requirements 

Prompt user for a filename

Check if the file exists

If it exists, check if it is readable, writable, and executable

Display appropriate messages for each permission'

FileChecker(){

local file_name
echo "Please Enter File Path:"
read file_name. # Takes user input as file path

if  -f "$file_name";then
    echo "File Exists"
else
    echo "File Does not exist!" 
    exit 1   
fi


if [ -r "$file_name" ];then
    echo "File is Readable"
else
    echo "File is not Readable"
fi    

if [ -w "$file_name" ];then
    echo "File is Writeable"
else
    echo "File is not Writeable"
fi        


if [ -x "$file_name" ];then
    echo "File is executable!"
else
    echo "File is not executable"    
fi

if [ ! -r "$file_name" ] && [ ! -w "$file_name" ] && [ ! -x "$file_name" ];then
    echo "File has no Permissions"

fi    

}

FileChecker