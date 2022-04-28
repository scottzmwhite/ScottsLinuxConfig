#!/bin/bash
#
# File: yocto_install_fedora.sh
# Description: Installs all the utilities needed
# to build linux distributions with the yocto project

echo "Installing all the packages necesarry for yocto builds"

sudo dnf install gawk  make wget tar bzip2 gzip \
python unzip perl patch diffutils diffstat git cpp \
gcc gcc-c++ glibc-devel texinfo chrpath ccache \
perl-Data-Dumper perl-Text-ParseWords perl-Thread-Queue \
socat findutils which SDL-devel xterm

echo "Complete: $PWD/"`basename "$0"`
