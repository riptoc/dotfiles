#!/usr/bin/env bash

# Script to be run when awesome starts.

# Run a program if it's not alredy
smart_run() {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

# Some of these will rely on PATH being set correctly
# to include ~/bin

# Default programs
smart_run firefox
xbindkeys
# Custom scripts, located in ~/bin
remapcaps
