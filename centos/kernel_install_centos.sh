#!/bin/bash
#
# File: kernel_tools_centos.sh
# Description: Installs all the utilities needed
# to build the linux kernel

echo "Installing all the packages necesarry for kernel builds"

sudo yum install gcc make git ctags ncurses-devel openssl-devel

echo "Complete"