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

# Machine specific configuration
if [ -f $HOME/.bashrc_machine ]; then
	source $HOME/.bashrc_machine
fi

# Generic Machine Independent Aliases
if [ -f $HOME/.bash_aliases ]; then
	source $HOME/.bash_aliases
fi

# Generic Machine Independent Functions
if [ -f $HOME/.bash_functions ]; then
	source $HOME/.bash_functions
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
PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/sbin"
PATH="$HOME/bin:$HOME/.local/bin:$PATH"
export PATH

# Colors for ls output
export LS_COLORS="no=01;33:fi=92:mi=05;31:di=01;34:ln=01;36:pi=40;35:ex=01;92;100:bd=35:cd=35"
