#!/bin/bash

function setup-aliases() {
    alias ip="/usr/host/bin/ip -c"
    alias cat="/usr/host/bin/bat"
    alias l="exa -lh -L 1 --tree -g --git --color=never"
    alias f="/usr/host/bin/fuck -y"
    alias k="kubectl"
    alias roadmapctl="/usr/host/bin/glab issue --repo clever-cloud/roadmap"
    alias infractl="/usr/host/bin/glab issue --repo clever-cloud/infra"
    alias kanbanctl="/usr/host/bin/glab issue --repo FlorentinDUBOIS/kanban"
    alias usystemctl="/usr/host/bin/systemctl --user"
}
