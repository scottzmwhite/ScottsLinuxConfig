# File: ~/.bashrc
# Description: Executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source aliases
if [ -f $HOME/.bash_aliases ]; then
	source $HOME/.bash_aliases
fi

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
# put timestamp of command in history display
HISTTIMEFORMAT="%Y%m%d%H%M%S "

# Setup prompt with 'user@hostname $PWD $'
export PS1='\[\e[0;36m\]\u@\H\[\e[1;35m\] \w\[\e[0;32m\] $ '

# Setup PATH
PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/sbin:/usr/lib64/ccache"
PATH="$HOME/bin:$HOME/.local/bin:$PATH"
#PATH="$PATH:/opt/rar"
#PATH="$PATH:/opt/gcc-arm-none-eabi-9-2019-q4-major"
#PATH="$PATH:$HOME/Qt5.13.1/5.13.1/gcc_64/bin"
#PATH="$PATH:/usr/local/Trolltech/Qt-4.8.6/bin"
export PATH

# Xilinx License Server
export XILINXD_LICENSE_FILE="27000@license.aja.com"

# Colors for ls output
export LS_COLORS="no=01;33:fi=92:mi=05;31:di=01;34:ln=01;36:pi=40;35:ex=01;92;100:bd=35:cd=35"

function svndiffall { svn status | grep ^M | awk '{print $2}' | xargs svn diff -r HEAD; }
export -f svndiffall
