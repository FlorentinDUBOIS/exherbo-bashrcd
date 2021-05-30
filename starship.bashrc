#!/bin/bash

#function set-window-title() {
#  echo -ne "\033]0; $USER in $(basename $PWD) \007"
#}

function setup-starship() {
  #starship_precmd_user_func="set-window-title"

  eval "$(starship init bash)"
}
