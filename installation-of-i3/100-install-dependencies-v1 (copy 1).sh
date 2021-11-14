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
echo "dependencies for i3 with gaps"
echo "#########################################"

# script 110
sudo apt install -y autoconf
sudo apt install -y automake
sudo apt install -y build-essential
# sudo apt install -y libtool
# sudo apt install -y xutils-dev xcb libxcb-composite0-dev
# sudo apt install -y doxygen

#script 120
#sudo apt install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev 
#sudo apt install -y libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev

echo
echo
echo "#########################################"
echo "dependencies for i3 with gaps installed"
echo "#########################################"
sleep 1