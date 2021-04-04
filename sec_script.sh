#!/bin/bash

#Security Script ver 0.1 03/09/2021

echo "Security Script ver 0.1 03/09/2021"
echo ""
echo "Script prepared by Bashair and Zaki"
echo ""
time=$(date "+%m.%d.%Y %H:%M")

echo "$time"
echo ""
echo "$USER is the current user "
echo ""
echo " ================================================= "
echo ""

echo "----Current Network Status----"
echo ""
nmcli device status
echo ""
echo "----Open Ports----"
echo ""
netstat -tulnp | grep "LISTEN"
echo ""
echo "----Firewall Status----"
echo ""
systemctl status firewalld | awk 'NR==3'
echo ""
echo " ================================================= "



