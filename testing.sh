#!/bin/sh
#!/usr/bin/env bash
ORGANIZATION=$1
APPLICATION=$2
PROD_IPADDRESS=$3
GLOB_IPADDRESS=$4
PRO_USERID=$5
GLOB_USERID=$6
PRO_PASSWORD=$7
GLOB_PASSWORD=$8
PRO_PORT=$9
GLOB_PORT=$10
# ORGANIZATION="Exicom"
# APPLICATION="Xfusion_Platform"
# IPADDRESS="192.168.1.122"
# USERID="developer"
# PASSWORD="admin@123"
# PORT="3306"
echo "$ORGANIZATION"
echo "$APPLICATION"
echo "$PROD_IPADDRESS"
echo "$GLOB_IPADDRESS"
echo "$PRO_USERID"
echo "$GLOB_USERID"
echo "$PRO_PASSWORD"
echo "$GLOB_PASSWORD"
echo "$PRO_PORT"
echo "$GLOB_PORT"
. ./deployement.sh