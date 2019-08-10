########################
## Zshrc aliases file ##
########################

# Use exa instead of ls
alias ls="exa --group-directories-first -h --git --time-style=long-iso"
alias tree="exa -lahT --level=3 -I .git"


# Source zshrc file
alias zsrc="source ~/.zshrc"


# Compilers
alias c="gcc -Wall"


# Quick cd to common locations
alias dwn="cd ~/Downloads"
alias t="cd ~/Tuts"
alias docs="cd ~/Documents"


# Edit common files
alias zshrc="nvim ~/.zshrc"
alias vimrc="nvim ~/.config/nvim/init.vim"
alias awmrc="nvim ~/.config/awesome/rc.lua"
alias kitrc="nvim ~/.config/kitty/kitty.conf"


# Common programs
alias v="nvim"
alias vim="nvim"
alias vpn="nordvpn"
alias cht="cht.sh"
alias r="ranger"


# Git
alias ga="git add"
alias gs="git status"
alias gd="git diff"
alias gcm="git commit -m"
alias gch="git checkout"
alias gchb="git checkout -b"
alias gb="git branch"
alias gm="git merge"


# Pacman/Yay
alias pacin="sudo pacman -S"
alias pacup="sudo pacman -Syu"
alias pacqi="pacman -Qi"
alias pacrm="pacman -Rs"
alias yayin="yay -S"
alias yayup="yay -Syu"
alias yayqi="yay -Qi"
alias yayrm="yay -Rs"


# General/Other
alias togglecaps="xdotool key Caps_Lock"
alias xup="xrdb ~/.Xresources"

