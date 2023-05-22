#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ..='cd ..'

update() {

 emerge -a n --update --oneshot sys-apps/portage
 emaint -a sync
 emerge --ask --verbose --update --deep --newuse @world
	


}


BLACK='\e[0;30m'
BLUE='\e[0;34m'
GREEN='\e[0;32m'
CYAN='\e[0;36m'
RED='\e[0;31m'

PURPLE='\e[0;35m'
BROWN='\e[0;33m'
LIGHTGRAY='\e[0;37m'
DARKGRAY='\e[1;30m'
LIGHTBLUE='\e[1;34m'
LIGHTGREEN='\e[1;32m'
LIGHTCYAN='\e[1;36m'
LIGHTRED='\e[1;31m'
LIGHTPURPLE='\e[1;35m'
YELLOW='\e[1;33m'
WHITE='\e[1;37m'
NC='\e[0m' # No Color


PS1='\[\e[0;35m\][\[\e[0;36m\]\u@\h \W\[\e[0;35m\]]\[\e[0;36m\]\$ \[\e[1;33m\]'
