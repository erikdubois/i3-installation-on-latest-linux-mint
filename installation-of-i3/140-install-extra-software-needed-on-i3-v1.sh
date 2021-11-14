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
#sudo apt install -y evolution

echo "#########################################################"
echo "Everything to work comfortably in i3 will be installed"
echo "#########################################################"

#sudo apt install -y i3-wm
sudo apt install -y dmenu

# conky
sudo apt install -y conky-all

# geany
#sudo apt install -y geany

# numerick lock on
sudo apt install -y numlockx
numlockx on

# change wallpapers with feh and variety
sudo apt install -y feh

# change icons,themes and mouse
sudo apt install -y lxappearance

# take picture of screen
sudo apt install -y scrot

# transparency of non active window
sudo apt install -y compton

# notify demon
#sudo apt install -y notify-osd


# get the mouse out of the way
sudo apt install -y unclutter

# to know what system you are on normally installed
sudo apt install -y lsb-release

# panel icon for sound
# sudo apt install -y volti
#sudo apt install  -y pasystray  paprefs pavumeter pulseaudio-module-zeroconf

# different terminal for nemo
#sudo apt install -y gnome-terminal nemo nemo-compare nemo-fileroller thunar
sudo apt install -y gnome-terminal

# Cursor theme
sudo apt install -y breeze-cursor-theme

# appfinder
#sudo apt install -y xfce4-appfinder

# rofi
sudo apt install -y rofi

# screenshooters
sudo apt install -y xfce4-screenshooter
#sudo apt install -y gnome-screenshot

# nitrogen
sudo apt install -y nitrogen

# chromium
#sudo apt install -y chromium-browser

# neofetch
sudo apt install -y neofetch

# screenkey
#sudo apt install -y screenkey

# simplescreenrecorder
#sudo apt install -y simplescreenrecorder

# sublime-text
sudo apt install -y sublime-text

# variety
sudo apt install -y variety

# playerctl for music
sudo apt install -y playerctl

#https://github.com/vivien/i3blocks
sudo apt install -y i3blocks

echo
echo
echo "#########################################################"
echo "Everything to work comfortably in i3 has been installed"
echo "#########################################################"
sleep 1
