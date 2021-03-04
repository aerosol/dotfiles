export ZSH_CACHE="$HOME/.zsh_cache"
mkdir -p $ZSH_CACHE

export EDITOR=nvim
export ERL_AFLAGS="-kernel shell_history enabled"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PAGER=less
export TERMINAL=kitty
export PATH=$HOME/.local/bin:$HOME/bin:$PATH

export YTFZF_HIST=1
export YTFZF_LOOP=1
export YTFZF_PREF="bestvideo[height<=?1080]+bestaudio/best"

if [[ "$TERM" == "xterm-kitty" ]]; then
	if [[ -z "$TMUX" ]] && [ "$SSH_CONNECTION" != "" ]; then
		tmux attach-session -t ssh_tmux || tmux new-session -s ssh_tmux
	elif [[ -z "$TMUX" ]]; then
		tmux new-session -s $(shuf -n 1 ~/.zsh/_short-words.txt)
	fi
fi
