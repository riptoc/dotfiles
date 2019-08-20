#!/usr/bin/env sh

# Script to be run when awesome starts.

# Run a program if it's not alredy
run() {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

# Default programs
run firefox
run xbindkeys
run compton --blur-background\
        --blur-method kawase\
        --blur-strength 5\
        --opacity-rule 85:'class_g="kitty"'\
        --opacity-rule 80:'class_g="rofi"'\
        --opacity-rule 85:'class_g="code-oss"'\
        --backend glx
nordvpn c
run feh --randomize --recursive --bg-fill ~/Pictures/Wallpapers/*
# Custom scripts
run ~/bin/remapcaps
