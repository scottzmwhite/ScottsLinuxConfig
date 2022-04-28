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
