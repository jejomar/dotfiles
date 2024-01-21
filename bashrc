

# Commands that should be applied only for interactive shells.
[[ $- == *i* ]] || return

HISTCONTROL=erasedups:ignorespace:ignoredups
HISTFILESIZE=2147483647
HISTSIZE=2147483647

shopt -s histappend
shopt -s checkwinsize
shopt -s extglob
shopt -s globstar
shopt -s checkjobs

alias fixnet='sudo rmmod ath10k_pci && sudo modprobe ath10k_pci'
alias ga='git add .'
alias gc='git commit'
alias gp='git push origin main'
alias grep='grep --color=auto'
alias gs='git status'
alias hl='nvim $HOME/.config/hypr/hyprland.conf'
alias hmrb='home-manager switch --flake $HOME/Repositories/nixos-config'
alias la='ls -la --color=auto'
alias ll='ls -l --color=auto'
alias nv='nvim'
alias nx='cd $HOME/Repositories/nixos-config'
alias nxrb='sudo nixos-rebuild switch --flake $HOME/Repositories/nixos-config'

if [[ ! -v BASH_COMPLETION_VERSINFO ]]; then
  . "/nix/store/w0lab72j89rr5sh8l7l85mc3k49yrn7w-bash-completion-2.11/etc/profile.d/bash_completion.sh"
fi

if test -n "$KITTY_INSTALLATION_DIR"; then
  source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"
fi

