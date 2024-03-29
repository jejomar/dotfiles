#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Environment variables
export HISTCONTROL=ignoreboth:erasedups
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export EDITOR=vim
export PATH=$HOME/.local/bin:$PATH

alias ls='ls --group-directories-first --color=auto'
alias ll='ls -l --group-directories-first --color=auto'
alias la='ls -la --group-directories-first --color=auto'
alias grep='grep --color=auto'
alias rf='source ~/.bashrc'
PS1='[\u@\h \W]\$ '

# Run fetch on new windows
pfetch

# Custom aliases
alias playground='. /home/lichi/.local/share/virtualenvs/playground-LddSAEqJ/bin/activate'
alias tree='tree -aC -L 3 -I '.git''
alias yayu='yay -Syyu --devel'
alias vf='vifm'
alias v='vim'
alias reflectorup='sudo reflector --save /etc/pacman.d/mirrorlist --country 'CN,JP,HK,RU,SG,KR' --latest 30 --protocol 'https''
alias restartnm='sudo systemctl stop NetworkManager && sudo systemctl start NetworkManager'
alias convart='convert cover.jpg -resize 1000x1000 cover.jpg'
alias cleanart='zip -m cover.zip cover.jpg'

# Editing configs
alias wbst='vim /home/lichi/.config/waybar/style.css'
alias wbcn='vim /home/lichi/.config/waybar/config'
alias hl='vim /home/lichi/.config/hypr/hyprland.conf'
alias hp='vim /home/lichi/.config/hypr/hyprpaper.conf'
alias vimrc='vim /home/lichi/.vimrc'
alias bashrc='vim /home/lichi/.bashrc'
alias vfrc='vim /home/lichi/.config/vifm/vifmrc'

# Shortcut to dirs
alias scrp='cd $HOME/projects/scripts'
alias dots='cd $HOME/projects/dotfiles'

# Starship init
eval "$(starship init bash)"
