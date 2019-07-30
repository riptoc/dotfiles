########################
## Zshrc aliases file ##
########################

# Edit this file
alias zshconfig="emacs ~/.zsh/.zshrc"

# Use exa instead of ls
alias ls="exa"
alias la="exa -abghl --git"
alias tree="exa -lahT --level=3 -I .git"

# Source zshrc file
alias zsrc="source ~/.zshrc"

# Quick compile c file
alias c="gcc -m64 -Wall"

# Git aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gco='git checkout '

# General/Other
alias v="nvim"
alias vim="nvim"
alias vpn="nordvpn"
alias cht="cht.sh"
alias vrc="nvim ~/.config/nvim/init.vim"
alias togglecaps="xdotool key Caps_Lock"
alias ppalist="grep -r --include '*.list' '^deb ' /etc/apt/sources.list /etc/apt/sources.list.d/"

# Typos
alias claer="clear"
