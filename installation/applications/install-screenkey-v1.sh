#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################


sudo rm -rf /opt/screenkey
sudo apt-get install python-gtk2 python-setuptools python-setuptools-git python-distutils-extra -y
sudo git clone https://github.com/wavexx/screenkey.git /opt/screenkey
cd /opt/screenkey
sudo ./setup.py install

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
