#!/bin/bash

#
#TouchFix
#Author: Christopher EnyTC
#Username: chrisenytc
#Site: http://chris.enytc.com
#Github: https://github.com/chrisenytc/touchfix
#Twitter: @chrisenytc
#

#Variables
opt=$1
args=("$@")

# Verify Commands
if [ $opt = "" ]
then
  echo "Restarting touchpad..."

  sudo modprobe -r psmouse && sudo modprobe psmouse

  gsettings set org.gnome.settings-daemon.peripherals.touchpad touchpad-enabled true
  
  echo "TouchPad Restarted!"
elif [ $opt = "help" ]
then
	echo "Welcome to TouchFix"
	echo "Author: Christopher EnyTC"
	echo "Site: http://chris.enytc.com"
	echo "Email: chrisenytc@gmail.com"
	echo "GitHub: https://github.com/chrisenytc/touchfix"
	echo "License: MIT License"
else
	echo "Command ${opt} not found!"
	echo "Try 'touchfix help'"
fi
