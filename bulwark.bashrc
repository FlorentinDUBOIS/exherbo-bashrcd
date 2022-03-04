#!/bin/bash

function bulwarkctl() {
	local action="${1}"

	shift
	case "${action}" in
		"connect")
			local name=$(hostnamectl hostname)

			tmux new-session -d -t "hv-${1}@${name}";
#			tmux send-keys -t "hv-${1}@${name}" "echo 'bulwark hv-${1}' | figlet | lolcat" Enter;
			tmux send-keys -t "hv-${1}@${name}" "ssh root@hv-${1}.clvrcld.net" Enter;
			tmux send-keys -t "hv-${1}@${name}" "clear" Enter;
			sleep 2;
			tmux a -t "hv-${1}@${name}"
		;;
	esac
}
