#!/bin/bash
set -e
#                                       
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
##################################################################################################################

echo "#########################################"
echo "Update and reboot"
echo "#########################################"

sudo apt update -y 
sudo apt upgrade -y 

echo
echo
echo "#########################################"
echo "Now reboot"
echo "#########################################"
