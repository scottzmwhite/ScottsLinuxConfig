#!/bin/bash
#
# File: yocto_install_ubuntu.sh
# Description: Installs all the utilities needed
# to build linux distributions with the yocto project

echo "Installing all the packages necesarry for yocto builds"

sudo apt-get install gawk wget git-core diffstat \
unzip texinfo gcc-multilib build-essential chrpath socat \
libsdl1.2-dev xterm

if ! hash python; then
	echo "Error: python is not installed"
	exit 1
fi

ver=$(python --version 2>&1 | sed 's/.* \([0-9]\).\([0-9]\).*/\1\2/')
if [[ "$ver" -ne "27" && "$ver" -ne "26" ]]; then
	echo "Error: Yocto requires python --version to be 2.6 or 2.7"
	echo "Check the installation and the PATH that python resolves"
	exit 1
fi

echo "Complete: $PWD/"`basename "$0"`
