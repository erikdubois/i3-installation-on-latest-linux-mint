#!/bin/bash
set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
##################################################################################################################

echo "#########################################################"
echo "General software"
echo "#########################################################"


sudo apt install -y firefox
sudo apt install -y gimp 
sudo apt install -y inkscape 
sudo apt install -y meld 
sudo apt install -y vlc 
sudo apt install -y evolution



echo "#########################################################"
echo "Everything to work comfortably in i3 will be installed"
echo "#########################################################"

# core applications
sudo apt-get install -y i3status i3lock

#sudo apt-get install -y i3-wm
sudo apt-get install -y dmenu

# conky
sudo apt-get install -y conky-all

# geany
sudo apt-get install -y geany

# numerick lock on
sudo apt-get install -y numlockx
numlockx on

# change wallpapers with feh and variety
sudo apt-get install -y feh

# change icons,themes and mouse
sudo apt-get install -y lxappearance qt4-qtconfig

# take picture of screen
sudo apt-get install -y scrot

# transparency of non active window
sudo apt-get install -y compton

# notify demon
sudo apt-get install -y notify-osd


# get the mouse out of the way
sudo apt-get install -y unclutter

# to know what system you are on normally installed
sudo apt-get install -y lsb-release

# panel icon for sound
# sudo apt-get install -y volti
sudo apt-get install  -y pasystray  paprefs pavumeter pulseaudio-module-zeroconf

# different terminal for nemo
sudo apt-get install -y gnome-terminal nemo

# Cursor theme
sudo apt-get install -y breeze-cursor-theme

# appfinder
sudo apt-get install -y xfce4-appfinder

# gmrun
sudo apt-get install -y gmrun

# rofi
sudo apt-get install -y rofi

# screenshooters
sudo apt-get install -y xfce4-screenshooter
sudo apt-get install -y gnome-screenshot

# nitrogen
sudo apt-get install -y nitrogen

# chromium
sudo apt-get install -y chromium-browser

# playerctl for music
#https://github.com/acrisci/playerctl/releases
    if hash playerctl 2>/dev/null; then
    	echo "playerctl already installed"
    else
        wget https://github.com/acrisci/playerctl/releases/download/v0.5.0/playerctl-0.5.0_amd64.deb -O /tmp/playerctl
		sudo dpkg -i /tmp/playerctl
    fi


#https://github.com/vivien/i3blocks
if hash i3blocks 2>/dev/null; then
    	echo "i3blocks is already installed"
else

	rm -rf /tmp/i3blocks
	git clone https://github.com/vivien/i3blocks.git /tmp/i3blocks
	cd /tmp/i3blocks
    ./autogen.sh
    ./configure
	make
	sudo make install
	rm -rf /tmp/i3blocks

fi





echo
echo
echo "#########################################################"
echo "Everything to work comfortably in i3 has been installed"
echo "#########################################################"
sleep 1
