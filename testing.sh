#!/bin/sh
#!/usr/bin/env bash

echo "This script is about to run another script."
MESSAGE="hello"
IPADDRESS="192.168.1.122"
USERID="developer"
PASSWORD="admin@123"
PORT="3306"
echo "$MESSAGE"
#bash ./deployement.sh

. ./deployement.sh

echo "This script has just run another script."
