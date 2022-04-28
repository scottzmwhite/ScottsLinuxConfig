#!/bin/bash
#
# File: yocto_install_centos.sh
# Description: Installs all the utilities needed
# to build linux distributions with the yocto project

echo "Installing all the packages necesarry for yocto builds"

sudo yum install gawk  make wget tar bzip2 gzip \
python unzip perl patch diffutils diffstat git cpp \
gcc gcc-c++ glibc-devel texinfo chrpath socat \
perl-Data-Dumper perl-Text-ParseWords perl-Thread-Queue \
SDL-devel xterm

echo "Complete: $PWD/"`basename "$0"`
