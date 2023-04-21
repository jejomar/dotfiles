#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Run pfetch on new windows
# pfetch

# Custom aliases
alias playground='. /home/lichi/.local/share/virtualenvs/playground-LddSAEqJ/bin/activate'
alias tree='tree -aC -I '.git''
