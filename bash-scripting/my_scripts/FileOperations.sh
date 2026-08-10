
: '

Task:  File Operations Script

Create a script that automates directory and file creation.

Requirements:

Create a directory called bash_demo

Navigate into the directory

Create a file called demo.txt

Write text to the file (include current date)

Display the file contents

'

FileOperations() {

mkdir bash_demo
echo "bash_demo directory created!"
cd bash_demo
touch demo.txt
echo "File demo.txt created!"
echo " The Current date is 10/08/2026" > demo.txt # Writes data to the file demo.txt
echo "File Contents: $( cat demo.txt )" # Displays the data within the file 


}

FileOperations