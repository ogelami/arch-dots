if [[ -z $DISPLAY ]]; then
	startx
fi

export VIMINIT='source $VIMRC'
export VIMRC='~/.config/vim/vimrc'

alias ll="ls -lah --color=auto $*"
#file /home/ogelami/.config/vim/vimrc

test -z ${TMUX} && tmux
