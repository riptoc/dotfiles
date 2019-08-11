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


# Dotfiles git function
dot()  { /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@ }
dota() { /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME add $@ }
dotaa() { /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME add -u }
dotc() { /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME commit $@ }
dots() { /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME status }
dotd() { /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME diff }
dotch() { /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout }
