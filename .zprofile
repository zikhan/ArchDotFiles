if [[ -t 1 && ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	startx
fi
