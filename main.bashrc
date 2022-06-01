#!/bin/bash

function main() {
    export PATH="${PATH}:${HOME}/.local/bin"

    local modules=("bulwark.bashrc" "bash_completion.sh" "transfer.bashrc" "golang.bashrc" "direnv.bashrc" "autojump.bashrc" "env.bashrc" "rustup.bashrc" "nvm.bashrc" "jabba.bashrc" "aliases.bashrc" "starship.bashrc" "completion.bashrc" "krew.bashrc")
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
    setup-starship
    # setup-golang
    # setup-krew
}

main
