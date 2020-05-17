export ZSH_CACHE="$HOME/.zsh_cache"
mkdir -p $ZSH_CACHE

export EDITOR=nvim
export ERL_AFLAGS="-kernel shell_history enabled"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PAGER=less
export TERMINAL=kitty
export PATH=$HOME/.local/bin:$HOME/bin:$PATH

# https://superuser.com/questions/1118878/using-notify-send-in-a-tmux-session-shows-error-no-notification
unset DBUS_SESSION_BUS_ADDRESS

if [[ "$TERM" == "xterm-kitty" ]]; then
	if [[ -z "$TMUX" ]] && [ "$SSH_CONNECTION" != "" ]; then
		tmux attach-session -t ssh_tmux || tmux new-session -s ssh_tmux
	elif [[ -z "$TMUX" ]]; then
		tmux new-session -s $(grep -E '^.{4}$' /usr/share/dict/words | shuf -n 1 | sed "s/'//g")
	fi
fi
