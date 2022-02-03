#!/bin/bash

function setup-completion() {
    for file in $(ls /etc/bash_completion.d); do
        [ -f "/etc/bash_completion.d/${file}" ] && . "/etc/bash_completion.d/${file}"
    done
}