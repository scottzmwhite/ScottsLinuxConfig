# Filename:    svnstat.sh
# Description: Colorize SVN status command


svn-status-colorize() {
	local ANSI_BLK="\o033[30m"
	local ANSI_RED="\o033[31m"
	local ANSI_GRN="\o033[32m"
	local ANSI_YEL="\o033[33m"
	local ANSI_BLU="\o033[34m"
	local ANSI_MAG="\o033[35m"
	local ANSI_CYN="\o033[36m"
	local ANSI_WHT="\o033[37m"
	local ANSI_BOLD="\o033[1m"
	local ANSI_REVERSE="\o033[7m"
	local ANSI_RESET="\o033[0m"										

	# This command assumes a black terminal background
	local SED="sed"
	if [[ -f /usr/local/bin/gsed ]] ; then
		# Make colorization work on Mac
		SED=/usr/local/bin/gsed
	fi
	echo "$@" | $SED \
			-e "s/^[RM].*/$ANSI_BOLD$ANSI_YEL&$ANSI_RESET/" \
			-e "s/^[A].*/$ANSI_BOLD$ANSI_GRN&$ANSI_RESET/" \
			-e "s/^[?].*/$ANSI_BOLD$ANSI_MAG&$ANSI_RESET/" \
			-e "s/^[D].*/$ANSI_BOLD$ANSI_RED&$ANSI_RESET/" \
			-e "s/^[C!~].*/$ANSI_BOLD$ANSI_RED&$ANSI_RESET/"
}

svnstat() {
	#svn status "$@" | rg "^[^?]"
	OUTPUT=$(svn status "$@")
	svn-status-colorize "$OUTPUT"
}

svnstat

