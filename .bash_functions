# File: ~/.bash_functions
# Description: Bash functions sourced from .bashrc

function svndiffall { svn status | grep ^M | awk '{print $2}' | xargs svn diff -r HEAD; }
export -f svndiffall
