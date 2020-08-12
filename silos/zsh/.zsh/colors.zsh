if [[ "$MUH_THEME" = "light" ]] then
	export BAT_THEME="ansi-light"
	export FZF_DEFAULT_OPTS='
	 --height 40% --layout=reverse --no-border
	 --color=fg:#000000,hl:#b33da7
	 --color=fg+:#000000,bg+:#eeeeee,hl+:#ff0000
	 --color=info:#444444,prompt:#707a8c,pointer:#cbccc6
	 --color=marker:#444444,spinner:#444444,header:#d4bfff'
else
	export BAT_THEME="1337"
	export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
	 --height 40% --layout=reverse --no-border
	 --color=fg:#cbccc6,hl:#707a8c
	 --color=fg+:#707a8c,bg+:#191e2a,hl+:#ffcc66
	 --color=info:#73d0ff,prompt:#707a8c,pointer:#cbccc6
	 --color=marker:#73d0ff,spinner:#73d0ff,header:#d4bfff'
fi
