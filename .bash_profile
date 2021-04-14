if [[ -z $DISPLAY && $(tty) == /dev/tty1 ]] ; then
	exec startx
fi

PATH=$PATH:~/.local/bin

export VIMINIT='source $VIMRC'
export VIMRC='~/.config/vim/vimrc'

alias ll="ls -lah --color=auto $*"
alias screenshot="maim -s -u | xclip -selection clipboard -t image/png -i"

execbg() { ($* > /dev/null 2>&1 &); }

source .bash_private

test -z ${TMUX} && tmux

echo -e "\$mod+Return - alacritty"
echo -e "\$mod+u      - spotify"
echo -e "\$mod+i      - pavucontrol"
echo -e "\$mod+b      - chromium"
echo -e "\$mod+n      - code"
echo -e "\$mod+e      - nemo"
echo -e "\$mod+j      - vim"
echo -e "\$mod+shit+q - kill \$current"
echo -e "\$mod+b      - chromium"
echo -e "\$mod+k      - slack"
echo -e "\$mod+l      - discord"
echo -e "\nflightmate-tunnel"
echo -e "\nscreenshot"
