#!/bin/bash

# check if the folder exits
BK_FOLDER=~/$USER"_nvim"

if [-d "$BK_FOLDER"]; then
	#copy the current config vim to this folder
	cp -R ~/.config/nvim/ $BK_FOLDER

	# remove the nvim folder from ~/.config/
	rm -rf ~/.config/nvim

	# then copy the nvim folder from here to ~/.config/
	cp -R nvim ~/.config/

	# then show the message
	echo"======================================================"
	echo"======= found the current backup folder $BK_FOLDER ==="
	echo"======= your nvim config are success! ==="
	echo" "
fi

# make the backup folder in user home
mkdir -p $BK_FOLDER

#copy the current config vim to this folder
cp -R ~/.config/nvim/ $BK_FOLDER

# remove the nvim folder from ~/.config/
rm -rf ~/.config/nvim

# then copy the nvim folder from here to ~/.config/
cp -R nvim ~/.config/

# then show the message
echo"============================================================="
echo"======= your nvim config are success! ==="
echo"======= create new backup folder $BK_FOLDER ==="
echo"======= your previous vim config can be found in $BK_FOLDER "

sleep 5s

nvim .
