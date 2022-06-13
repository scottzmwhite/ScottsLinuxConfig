#!/bin/bash
#
# File: kernel_tools_ubuntu.sh
# Description: Installs all the utilities needed
# to build the linux kernel

echo "Installing all the packages necesarry for kernel builds"

sudo apt-get install libncurses5-dev gcc make git exuberant-ctags \
bc libssl-dev

echo "Complete"
