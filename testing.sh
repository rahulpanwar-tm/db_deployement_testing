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


MESSAGE=$1
IPADDRESS=$2
USERID=$3
PASSWORD=$4
PORT="$5
echo "$MESSAGE"

. ./deployement.sh


