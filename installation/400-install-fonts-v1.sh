#!/bin/bash
#set -e
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
##################################################################################################################

[ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"


echo "################################################################" 
echo "Installing the fonts if you do not have it yet - with choice"
echo "They are needed for the conky and the statusbar."

FONT="fontawesome-webfont"


if fc-list | grep -i $FONT >/dev/null ; then

    echo "################################################################" 
    echo "The font is already available. Proceeding ...";

else
    echo "################################################################" 
    echo "The font is not currently installed, would you like to install it now? (y/n)";
    read response
    if [[ "$response" =~ ^(yes|y)$ ]]; then
        echo "Installing the font to the ~/.fonts directory.";
        cp fonts/fontawesome-webfont.ttf ~/.fonts
        echo "################################################################" 
        echo "Building new fonts into the cache files";
        echo "Depending on the number of fonts, this may take a while..." 
        fc-cache -fv ~/.fonts
        echo "################################################################" 
        echo "Check if the cache build was successful?";    
        if fc-list | grep -i $FONT >/dev/null; then
            echo "################################################################" 
            echo "The font was sucessfully installed!";
        else
            echo "################################################################" 
            echo "Something went wrong while trying to install the font.";
        fi
    else
        echo "################################################################"     
        echo "Skipping the installation of the font.";
        echo "Please note that this conky configuration will not work";
        echo "correctly without the font.";
    fi

fi




FONT="StyleBats_CleanCut"


if fc-list | grep -i $FONT >/dev/null ; then

    echo "################################################################" 
    echo "The font is already available. Proceeding ...";

else
    echo "################################################################" 
    echo "The font is not currently installed, would you like to install it now? (y/n)";
    read response
    if [[ "$response" =~ ^(yes|y)$ ]]; then
        echo "Installing the font to the ~/.fonts directory.";
        cp fonts/StyleBats_CleanCut.ttf ~/.fonts
        echo "################################################################" 
        echo "Building new fonts into the cache files";
        echo "Depending on the number of fonts, this may take a while..." 
        fc-cache -fv ~/.fonts
        echo "################################################################" 
        echo "Check if the cache build was successful?";    
        if fc-list | grep -i $FONT >/dev/null; then
            echo "################################################################" 
            echo "The font was sucessfully installed!";
        else
            echo "################################################################" 
            echo "Something went wrong while trying to install the font.";
        fi
    else
        echo "################################################################"     
        echo "Skipping the installation of the font.";
        echo "Please note that this conky configuration will not work";
        echo "correctly without the font.";
    fi

fi



echo "#########################################################"
echo "Fonts have been  installed"
echo "#########################################################"
sleep 1
