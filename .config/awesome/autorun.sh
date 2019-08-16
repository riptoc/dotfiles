#!/usr/bin/env sh

# Script to be run when awesome starts.

# Run a program if it's not alredy
smart_run() {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

# Default programs
smart_run firefox
xbindkeys
compton --blur-background\
        --blur-method kawase\
        --blur-strength 5\
        --opacity-rule 85:'class_g="kitty"'\
        --opacity-rule 85:'class_g="code-oss"'\
        --backend glx
vpn c
# Custom scripts
~/bin/remapcaps
