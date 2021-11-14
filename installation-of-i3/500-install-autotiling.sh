#!/bin/bash
set -e
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
##################################################################################################################

if [ -d  $HOME"/.local/bin" ] ; then
	echo ".local/bin exists"
else 
	mkdir ~/.local/bin
fi

if [ -d  "$HOME/.local/bin" ] ; then
	export PATH="$HOME/.local/bin:$PATH"
fi

sudo apt install pip -y
pip install autotiling

echo "adding .local/bin to the path"
echo "do it manually if needed"


echo "#########################################################"
echo "Settings have been copied"
echo "#########################################################"
