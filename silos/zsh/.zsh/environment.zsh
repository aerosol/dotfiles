export ZSH_CACHE="$HOME/.zsh_cache"
mkdir -p $ZSH_CACHE

export MUH_THEME="dark"
export EDITOR=nvim
export ERL_AFLAGS="-kernel shell_history enabled"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PAGER=less
export TERMINAL=foot
export PATH=$HOME/.local/bin:$HOME/bin:$HOME/.nimble/bin:$PATH
export EXA_ICON_SPACING=2

if [ "$HOST" = "carb" ]; then
	export GDK_SCALE=2
	export GDK_DPI_SCALE=2
	export QT_SCALE_FACTOR=2
fi

if [[ "$TERM" == "xterm-256color" ]]; then
	if [[ -z "$TMUX" ]] && [ "$SSH_CONNECTION" != "" ]; then
		echo "ssh connection detected, not starting tmux"
	elif [[ -z "$TMUX" ]]; then
		tmux new-session -s $(shuf -n 1 ~/.zsh/_short-words.txt)
	fi
fi

export BAT_THEME="Solarized(mine)"
