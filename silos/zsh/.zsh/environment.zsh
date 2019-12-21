export EDITOR=nvim
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PAGER=less
export ZSH_CACHE="$HOME/.zsh_cache"
mkdir -p $ZSH_CACHE
export PATH=$HOME/.local/bin:$HOME/bin:$PATH

export ERL_AFLAGS="-kernel shell_history enabled"

# https://superuser.com/questions/1118878/using-notify-send-in-a-tmux-session-shows-error-no-notification
unset DBUS_SESSION_BUS_ADDRESS

source $HOME/.asdf/asdf.sh

#if [[ $(ps --no-header -p $PPID -o comm) =~ '^kitty|tmux|zsh$' ]]; then
	#for wid in $(xdotool search --pid $PPID); do
		#xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id $wid; done
#fi

if [[ "$TERM" == "xterm-kitty" ]]; then
	if [[ -z "$TMUX" ]] && [ "$SSH_CONNECTION" != "" ]; then
		tmux attach-session -t ssh_tmux || tmux new-session -s ssh_tmux
	elif [[ -z "$TMUX" ]]; then
		tmux new-session -s $(grep -E '^.{4}$' /usr/share/dict/cracklib-small | shuf -n 1 | sed "s/'//g")
	fi
fi
