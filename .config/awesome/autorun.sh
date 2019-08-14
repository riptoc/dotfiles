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
compton --blur-background --blur-method kawase --blur-strength 5 --opacity-rule 85:'class_g="kitty"' --backend glx # --shadow --shadow-opacity=1 --clear-shadow --shadow-radius=7 --shadow-offset-x=-10 --shadow-offset-y=-10
vpn c
# Custom scripts
remapcaps
