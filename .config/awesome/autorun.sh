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
run google-chrome-stable
run xbindkeys
run compton --blur-background\
        --blur-method kawase\
        --blur-strength 8\
        --opacity-rule 80:'class_g="kitty"'\
        --opacity-rule 80:'class_g="rofi"'\
        --opacity-rule 80:'class_g="code-oss"'\
        --opacity-rule 90:'class_g="jetbrains-pycharm"'\
        --opacity-rule 90:'class_g="jetbrains-idea"'\
        --opacity-rule 90:'class_g="jetbrains-clion"'\
        --backend glx
run feh --randomize --recursive --bg-fill ~/Pictures/Wallpapers/j2d0wlha7dh31.png.webp
# Custom scripts
run ~/bin/remapcaps
