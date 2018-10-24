#!/bin/sh
#!/usr/bin/env bash
ORGANIZATION=$1
APPLICATION=$2
IPADDRESS=$3
USERID=$4
PASSWORD=$5
PORT=$6
# ORGANIZATION="Exicom"
# APPLICATION="Xfusion_Platform"
# IPADDRESS="192.168.1.122"
# USERID="developer"
# PASSWORD="admin@123"
# PORT="3306"
echo "$ORGANIZATION"
echo "$APPLICATION"
echo "$IPADDRESS"
echo "$USERID"
echo "$PASSWORD"
echo "$PORT"

. ./deployement.sh