#
#   ~/.bashrc
# .:: s0805753 ::. 


[[ $- != *i* ]] && return

# 8-bit terminal
export TERM=rxvt-256color

# set vi editing mode
set -o vi

# set locale
export LC_ALL=en_GB.UTF-8

#export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -XX:+DisableExplicitGC -XX:+HeapDumpOnOutOfMemoryError"
export SCALA_HOME="/usr/share/scala"
export ANT_OPTS="-Xms512m -Xmx512m"

# aliases
alias ls='ls --color=auto'
alias pacman='pacman-color'
alias gvim='gvim --remote-silent'
alias :q!='exit'

alias wine='WINEARCH=win32 WINEPREFIX=~/win32 wine'
PS1="\[\033[0;31m\][\$(date +%H:%M)]\[\033[1;34m\][\u:\w]$\[\033[0m\] "
umask 077

# cdargs function - bash bookmarks
function cdb () {
 cdargs "$1" && cd "`cat "$HOME/.cdargsresult"`" ;
}

function cdb () {
 cdargs "$1" && cd "`cat "$HOME/.cdargsresult"`" && pwd ;
}

function cdb () {
 cdargs "$1" && cd "`cat "$HOME/.cdargsresult"`" &&
 rm -f "$HOME/.cdargsresult";
}

function mark () {
 cdargs --add=":$1:`pwd`" ;
}

fortune
