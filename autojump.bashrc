#!/bin/bash

function setup-autojump() {
    if [ -f "/usr/share/autojump/autojump.bash" ]; then
        source "/usr/share/autojump/autojump.bash"
    fi
}
