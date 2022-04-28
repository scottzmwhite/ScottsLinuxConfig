#!/bin/bash
#
# File: yocto_install_ubuntu.sh
# Description: Installs all the utilities needed
# to build linux distributions with the yocto project

echo "Installing all the packages necesarry for yocto builds"

sudo apt-get install gawk wget git-core diffstat \
unzip texinfo gcc-multilib build-essential chrpath socat \
libsdl1.2-dev xterm

echo "Complete: $PWD/"`basename "$0"`
