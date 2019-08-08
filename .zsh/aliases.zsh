########################
## Zshrc aliases file ##
########################

# Edit common files
alias zshrc="nvim ~/.zshrc"
alias vimrc="nvim ~/.config/nvim/init.vim"
alias awmrc="nvim ~/.config/awesome/rc.lua"

# Use exa instead of ls
alias ls="exa --group-directories-first -h --git --time-style=long-iso"
alias tree="exa -lahT --level=3 -I .git"

# Source zshrc file
alias zsrc="source ~/.zshrc"

# Quick compile c file
alias c="gcc -m64 -Wall"

# General/Other
alias a="sudo apt"
alias v="nvim"
alias vim="nvim"
alias vpn="nordvpn"
alias cht="cht.sh"
alias vrc="nvim ~/.config/nvim/init.vim"
alias togglecaps="xdotool key Caps_Lock"
alias ppalist="grep -r --include '*.list' '^deb ' /etc/apt/sources.list /etc/apt/sources.list.d/"
alias xup="xrdb ~/.Xresources"

# Typos
alias claer="clear"
