#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# History control
export HISTCONTROL="erasedups:ignorespace"
export HISTSIZE=
export HISTFILESIZE=

# Aliases: Config files
alias hl='nvim $HOME/.config/hypr/hyprland.conf'

# Musicbrainz Picard
alias convart='convert cover.jpg -resize 1000x1000 cover.jpg'
alias cleanart='zip -m cover.zip cover.jpg'

# Ensure that only one 'ssh-agent' process runs at a time
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi
