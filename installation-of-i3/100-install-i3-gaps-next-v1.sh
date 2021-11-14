#!/bin/bash 
set -e
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
##################################################################################################################

sudo apt install thunar -y
sudo apt install gnome-terminal -y
sudo apt install compton -y

sudo add-apt-repository ppa:regolith-linux/release
sudo apt update
sudo apt install i3-gaps -y

echo
echo "##################################################"
echo "i3 with gaps installed"
echo "##################################################"
sleep 1
