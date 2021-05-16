#!/bin/bash

function setup-rustup() {
    if [ -f "${HOME}/.cargo/env" ]; then
        source "${HOME}/.cargo/env"
    fi
}
