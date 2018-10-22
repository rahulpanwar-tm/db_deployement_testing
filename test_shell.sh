#!/bin/bash

dest="/nas100/backups/servers/z/zebra/mysql.tgz"
## get file name i.e. basename such as mysql.tgz
tempfile="${dest##*/}"
 
## display filename 
echo "${tempfile%.*}"

echo "Rahul Panwar"
