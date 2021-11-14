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
sudo apt install picom -y

echo "##################################################"
echo "Latest possible version of i3 with gaps"
echo "##################################################"

sudo add-apt-repository ppa:regolith-linux/release
sudo apt update
sudo apt install i3-gaps thunar gnome-terminal

echo "If the keys can come in you are fine else build it yourself"
echo "else run 120b - you need to install the dependencies from 100"
echo
echo
echo "##################################################"
echo "Latest possible version of i3 with gaps installed"
echo "##################################################"
sleep 1