##########################
## Zshrc functions file ##
##########################

# Print path in a nicer format
PATHs() {
  printf '%s$PATH:%s\n' "$(tput bold)" "$(tput sgr0)"
  echo "$PATH" | tr ':' '\n'
}


# Create a new directory and enter it
mc() {
  mkdir -p "$@" && cd "$@"
}


# cd and ls
cl() {
  local dir="$1"
  local dir="${dir:=$HOME}"
  if [[ -d "$dir" ]]; then
    cd "$dir" >/dev/null; ls
  else
    echo "bash: cl: $dir: Directory not found"
  fi
}


# Quick compile and run a c++ program
cppr() {
  g++ $1 && ./a.out
}
