#!/bin/bash

function main() {
    local modules=("bash_completion.sh" "thefuck.bashrc" "direnv.bashrc" "autojump.bashrc" "env.bashrc" "rustup.bashrc" "nvm.bashrc" "jabba.bashrc" "aliases.bashrc" "starship.bashrc" "completion.bashrc")
    for module in "${modules[@]}"; do
        source "/etc/bash/bashrc.d/${module}"
    done

    setup-env
    setup-rustup
    setup-jabba
    setup-nvm
    setup-aliases
    setup-autojump
    setup-direnv
    setup-completion
    setup-thefuck
    setup-starship
}
