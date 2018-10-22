#!/bin/bash

dest="/nas100/backups/servers/z/zebra/mysql.tgz"
## get file name i.e. basename such as mysql.tgz
tempfile="${dest##*/}"
 
## display filename 
echo "${tempfile%.*}"



for filename in /home/ttpl/.jenkins/workspace/Database_automation_testing/*.sql; do
#   echo  "$(basename "$filename")"
#    Array50=$(basename "$filename")
#    Array1=("${Arry50[@]}" "$filename")
# Array1=("${Array1[@]}" $(basename "$filename"))
#Array1=("${Array1[@]}" "$filename")
echo "$filename"

done

echo "Rahul Panwar"





