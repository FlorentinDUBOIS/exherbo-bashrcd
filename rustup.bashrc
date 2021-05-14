#!/bin/bash

function setup-rustup() {
    if [ -z "${HOME}/.cargo/env" ]; then
        source "${HOME}/.cargo/env"
    fi
}
