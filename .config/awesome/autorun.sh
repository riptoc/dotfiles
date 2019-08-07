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
compton
compton-trans
# Custom scripts
~/bin/remapcaps
