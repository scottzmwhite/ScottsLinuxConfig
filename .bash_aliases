# File: ~/.bash_aliases
# Description: Scott's generic aliases
# Souced from ~/.bashrc
 
# Commands to navigate easier
alias ..='cd ../'
alias ...='.. && ..'
alias ....='... && ..'
alias .....='.... && ..'
alias ......='..... && ..'
alias ls='ls --color=always'
alias ll='ls -la --group-directories-first'

alias open='xdg-open' # Open PDF and HTML files
alias targz='tar xvzf' # Unzip tar.gz files
alias rm='rm -I --preserve-root'

# SVN commands
alias svnstat='svnstat.sh' # Colorize svn status
alias svndiff='svn diff --diff-cmd=colordiff --extensions=" -u --strip-trailing-cr --ignore-space-change "'
alias svnignore_edit='svn propedit svn:ignore --editor-cmd vim .'
alias svnexternals_edit='svn propedit svn:externals --editor-cmd vim .'
