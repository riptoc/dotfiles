#!/usr/bin/env bash

autorun() {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

autorun firefox
autorun remapcaps
autorun multimedia_keys
