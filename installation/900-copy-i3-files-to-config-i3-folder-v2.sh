#!/bin/bash
set -e
#
#
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
##################################################################################################################


##################################################################################################################
########################                        D I S T R O                             ##########################
##################################################################################################################

echo "################################################################"
echo "This script will copy/paste all the i3 configuration files "
echo "to the ~/.config/i3 folder."


echo "################################################################"
echo "Checking presence of lsb-release and install it when missing"

	if ! location="$(type -p "lsb_release")" || [ -z "lsb_release" ]; then

		# check if apt-git is installed
		if which apt-get > /dev/null; then

			sudo apt-get install -y lsb-release

		fi

		# check if pacman is installed
		if which pacman > /dev/null; then

			sudo pacman -S --noconfirm lsb-release

		fi

		# check if eopkg is installed
		if which eopkg > /dev/null; then

			sudo eopkg -y install lsb-release

		fi

	fi


DISTRO=$(lsb_release -si)

echo "################################################################"
echo "You are working on " $DISTRO




##################################################################################################################
########################                    S O F T W A R E                             ##########################
##################################################################################################################




echo "################################################################"
echo "Checking if git is installed and install it if it is not installed yet."



case $DISTRO in 

	LinuxMint|linuxmint|Ubuntu|ubuntu)

		echo "Installing software for "$DISTRO

		# check if git is installed
		if ! location="$(type -p "git")" || [ -z "git" ]; then

			echo "################################################################"
			echo "installing git for this script to work"


		   	sudo apt-get install -y git

		  else
		  	echo "################################################################"
		  	echo "git was already installed. Proceeding..."
		fi

	
		;;

	Arch|arch)
		echo "################################################################"
		echo "Installing software for "$DISTRO

		if ! location="$(type -p "git")" || [ -z "git" ]; then

			echo "################################################################"
			echo "installing git for this script to work"


		  	sudo pacman -S --noconfirm git

		  else
		  	echo "################################################################"
		  	echo "git was already installed. Proceeding..."


		fi

		;;

	Solus|solus)
		echo "################################################################"
		echo "Installing software for "$DISTRO

		if ! location="$(type -p "git")" || [ -z "git" ]; then

			echo "################################################################"
			echo "installing git for this script to work"


		  	sudo eopkg install -y git

		  else
		  	echo "################################################################"
		  	echo "git was already installed. Proceeding..."


		fi
		;;




	*)
		echo "################################################################"
		echo "There were no installation lines for your distro " $DISTRO

		;;
esac





##################################################################################################################
###################### C H E C K I N G   E X I S T E N C E   O F   F O L D E R S            ######################
##################################################################################################################b

# define the github here, just last part

GITHUB=LinuxMint182i3

echo "################################################################"
echo "Checking if /tmp folder is clean"
[ -d /tmp/$GITHUB ] && rm -rf "/tmp/$GITHUB" & echo "/tmp is clean now" || echo "/tmp is clean"

echo "################################################################"
echo "Downloading the files from github to /tmp directory " $GITHUB


git clone https://github.com/erikdubois/$GITHUB /tmp/$GITHUB


echo "################################################################"
echo "Check if there is a ~/.config/i3 folder else make one"

[ -d $HOME"/./config/i3" ] || mkdir -p $HOME"/.config/i3"




##################################################################################################################
######################              C L E A N I N G  U P  O L D  F I L E S                    ####################
##################################################################################################################

# removing all the old files that may be in .config/i3 with confirm deletion

if find ~/.config/i3 -mindepth 1 > /dev/null ; then

	read -p "Everything in folder ~/.config/i3 will be deleted. Are you sure? (y/n)?" choice
	case "$choice" in 
 	 y|Y ) rm -rf ~/.config/i3/* ;;
 	 n|N ) echo "Nothing has changed." & echo "Script ended!" & exit;;
 	 * ) echo "Type y or n." & echo "Script ended!" & exit;;
	esac

else
	echo "################################################################" 
	echo ".config/i3 folder is ready and empty. Files will now be copied."

fi

##################################################################################################################
######################              M O V I N G  I N  N E W  F I L E S                        ####################
##################################################################################################################


# copy all config files to this hidden folder
rm /tmp/$GITHUB/git-v1.sh 
rm /tmp/$GITHUB/setup-git-v1.sh

cp -rf /tmp/$GITHUB/* ~/.config/i3
rm -rf /tmp/$GITHUB

echo "################################################################"
echo "In this hidden folder ~/.config/i3 you will find"
echo "the most recent configs."
echo "################################################################"
echo "##############  LOG OFF AND LOG ON WITH I3     #################"
echo "################################################################"
