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

