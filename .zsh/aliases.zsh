########################
## Zshrc aliases file ##
########################

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
alias vi="nvim"
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


# Dotfiles
alias dot="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@"
alias dota="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME add $@"
alias dotaa="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME add -u"
alias dotc="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME commit $@"
alias dots="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME status"
alias dotd="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME diff"
alias dotch="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout"


# Pacman/Yay
alias pacin="sudo pacman -S"
alias pacup="sudo pacman -Syu"
alias pacqi="pacman -Qi"
alias pacrm="sudo pacman -Rs"
alias yayin="yay -S"
alias yayup="yay -Syu"
alias yayqi="yay -Qi"
alias yayrm="yay -Rs"


# Modified commands
alias more="less"
alias df="df -h"
alias du="du -c -h"
alias ls="exa --group-directories-first -h --git --time-style=long-iso"
alias tree="exa -lahT --level=3 -I .git"
alias mkdir="mkdir -pv"
alias nano="nano -w"
alias ping="ping -c 5"
alias g++="g++ -Wall -std=c++17"


# Safety first
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'


# General/Other
alias togglecaps="xdotool key Caps_Lock"
alias xup="xrdb ~/.Xresources"
alias :q=' exit'
alias zsrc="source ~/.zshrc"
