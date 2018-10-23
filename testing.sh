#!/bin/sh
#!/usr/bin/env bash

#echo "This script is about to run another script."
# MESSAGE="hello"
# IPADDRESS="192.168.1.122"
# USERID="developer"
# PASSWORD="admin@123"
# PORT="3306"
# echo "$MESSAGE"

# MESSAGE="$IN_MESSAGE"
# IPADDRESS="$IN_IPADDRESS"
# USERID="$IN_USERID"
# PASSWORD="$IN_PASSWORD"
# PORT="$IN_PORT"
# echo "$MESSAGE"



IPADDRESS=$1
USERID=$2
PASSWORD=$3
PORT=$4


. ./deployement.sh


