#!/bin/bash
if [ -z $TMUX ]; then
	echo -e "\033]11;#3A0000\a"
	ssh "$@"
	echo -e "\033]11;#000000\a"
else
	tmux select-pane -P 'bg=#400E2B'
	ssh "$@"
	tmux select-pane -P 'bg=black'
fi
