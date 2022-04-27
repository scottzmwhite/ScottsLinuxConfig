# File: ~/.bash_aliases
# Description: Scott's generic aliases
# Souced from ~/.bashrc

# Source AJA specific aliases
if [ -f $HOME/.bash_aliases_aja ]; then
	source $HOME/.bash_aliases_aja
fi
 
# Commands to navigate easier
alias ..='cd ../'
alias ...='.. && ..'
alias ....='... && ..'
alias .....='.... && ..'
alias ......='..... && ..' 
alias ll='ls -la --group-directories-first'

# Commands to run programs a special way
alias putty='sudo putty >/dev/null & disown' # Open Putty
alias eclipse='nohup /opt/eclipse/cpp-2021-12/eclipse/eclipse >/dev/null 2>1 & disown'

alias open='xdg-open' # Open PDF and HTML files
alias targz='tar xvzf' # Unzip tar.gz files
alias rm='rm -I --preserve-root'

# SVN commands
alias svnstat='svnstat.sh' # Colorize svn status
alias svndiff='svn diff --diff-cmd=colordiff --extensions=" -u --strip-trailing-cr --ignore-space-change "'
alias svnignore_edit='svn propedit svn:ignore --editor-cmd vim .'
alias svnexternals_edit='svn propedit svn:externals --editor-cmd vim .'
