#!/bin/bash
set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
##################################################################################################################

#installation of termite


git clone --recursive https://github.com/thestinger/termite.git /tmp/termite
git clone https://github.com/thestinger/vte-ng.git /tmp/vte-ng
sudo apt-get install -y \
	g++ \
	libgtk-3-dev \
	gtk-doc-tools \
	gnutls-bin \
	valac \
	intltool \
	libpcre2-dev \
	libglib3.0-cil-dev \
	libgnutls28-dev \
	libgirepository1.0-dev \
	libxml2-utils \
	gperf

echo export LIBRARY_PATH="/usr/include/gtk-3.0:$LIBRARY_PATH"
cd /tmp
cd vte-ng && ./autogen.sh && make && sudo make install
cd ../termite && make && sudo make install
sudo ldconfig
sudo mkdir -p /lib/terminfo/x
sudo ln -sf /usr/local/share/terminfo/x/xterm-termite  /lib/terminfo/x/xterm-termite

rm -rf /tmp/vte-ng
rm -rf /tmp/termite

echo
echo
echo "#########################################################"
echo "Termite is installed"
echo "#########################################################"
sleep 1
