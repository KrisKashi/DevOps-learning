LOGFILE=/Users/kriskashi/Desktop/DevOps-learning/bash-scripting/Bash-Battle-Arena/Logs
#Logfile directory, Seperate from what we're monitoring to avoid a loop 

echo "Enter directory to monitor"
read DIR

if [ ! -d "$DIR" ];then #Checks if directory exists
    echo "Invalid directory"
    exit 1
fi    
echo "Monitoring Directory: "$DIR""
fswatch -x  "$DIR" | while read -r path type ;do #Fswatch monitors for changes, start a loop where we split variables into path and type of change
timestamp=$(date +"%Y-%m-%d_%H-%M-%S") 
echo "$path-[$type]-[$timestamp]" >> "$LOGFILE"/monitor.log #Write to logfile


done