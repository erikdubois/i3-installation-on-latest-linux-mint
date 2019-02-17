#!/bin/bash
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
##################################################################################################################

# if there is no hidden folder then make one
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"

rm -rf /tmp/Mint-Y-Colora-Theme-Collection
git clone https://github.com/erikdubois/Mint-Y-Colora-Theme-Collection /tmp/Mint-Y-Colora-Theme-Collection
find /tmp/Mint-Y-Colora-Theme-Collection -maxdepth 1 -type f -exec rm -rf '{}' \;
cp -r /tmp/Mint-Y-Colora-Theme-Collection/Cinnamon\ 3.4/* ~/.themes/
rm -rf /tmp/Mint-Y-Colora-Theme-Collection



echo "################################################################"
echo "###############      mint-y-themes installed        ############"
echo "################################################################"
