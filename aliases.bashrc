#!/bin/bash

function setup-aliases() {
    alias ip="/usr/bin/ip -c"
    alias cat="/usr/bin/bat"
    alias l="exa -lh -L 1 --tree -g --git --color=never"
    alias f="/usr/bin/fuck -y"
    alias k="kubectl"
    alias roadmapctl="/usr/bin/glab issue --repo clever-cloud/roadmap"
    alias infractl="/usr/bin/glab issue --repo clever-cloud/infra"
    alias kanbanctl="/usr/bin/glab issue --repo FlorentinDUBOIS/kanban"
    alias usystemctl="/usr/bin/systemctl --user"
}
