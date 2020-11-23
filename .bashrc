#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Custom aliases
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias suckit='sudo cp config.def.h config.h && sudo make clean install'
alias gotodwm='cd ~/.config/dwm/'
alias gotost='cd ~/.config/st/'
alias gotodmenu='cd ~/.config/dmenu/'
# Ignore duplicates and spaces
export HISTCONTROL=ignoreboth

# Powerline init
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh
