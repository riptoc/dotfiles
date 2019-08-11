########################
## Zshrc aliases file ##
########################

# Use exa instead of ls
alias ls="exa --group-directories-first -h --git --time-style=long-iso"
alias tree="exa -lahT --level=3 -I .git"


# Source zshrc file
alias zsrc="source ~/.zshrc"


# Compilers
alias ccomp="gcc -Wall"
alias cppcomp="g++ -Wall -std=c++17"

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
alias mkdir="mkdir -pv"


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


# General/Other
alias togglecaps="xdotool key Caps_Lock"
alias xup="xrdb ~/.Xresources"

