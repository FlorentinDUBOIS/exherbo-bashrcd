#!/bin/bash

function bulwarkctl() {
	local action="${1}"

	shift
	case "${action}" in
        "create")
            ssh -t root@hv-${1}.clvrcld.net 'tmux new -t fdubois';
        ;;
		"connect")
            ssh -t root@hv-${1}.clvrcld.net 'tmux a -t fdubois';
		;;
	esac
}
