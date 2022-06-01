#!/bin/bash

function bulwarkctl() {
    local action="${1}"

    shift
    case "${action}" in
	"e"|"entrypoint")
		bulwarkctl create hv-par0-003;
	;;
	"d"|"direct")
		ssh root@${1}.clvrcld.net;
	;;
        "cr"|"create")
            	ssh -t root@${1}.clvrcld.net 'tmux new -t fdubois';
        ;;
    	"co"|"connect")
            	ssh -t root@${1}.clvrcld.net 'tmux a -t fdubois';
        ;;
    	"j"|"jump")
            	ssh -t root@hv-par0-003.clvrcld.net "tmux new-session -s ${1} -d && tmux send-keys -t ${1} 'ssh root@${1}' Enter && tmux a -t ${1}";
	;;
    	"ssh")
        	ssh -t root@hv-par0-003.clvrcld.net "tmux new-session -s ${1} -d && tmux send-keys -t ${1} 'instanceSSH ${1}' Enter && tmux a -t ${1}";
    	;;
    	"o"|"open")
        	xdg-open "https://admin.clever-cloud.com/magicsearch?query=${1}";
    	;;
    esac
}
