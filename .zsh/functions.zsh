##########################
## Zshrc functions file ##
##########################

# Print path in a nicer format
PATHs() {
    printf '%s$PATH:%s\n' "$(tput bold)" "$(tput sgr0)"
    echo "$PATH" | tr ':' '\n'
}

# Create a new directory and enter it
mc () {
  mkdir -p "$@" && cd "$@"
}

# Prettier man pages
man() {
  env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
      man "$@"
}

# Open in Emacs
e() {
    emacs --no-splash $@ &
}

# Dotfiles git function
dots()  { /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@ }
dotsa() { /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME add $@ }
dotsc() { /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME commit $@ }
dotss() { /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME status }
