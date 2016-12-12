[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS="-e --reverse --ansi --color=bw"
export FZF_DEFAULT_COMMAND='ag -g ""'

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

. /Users/hq1/dev/erlang/18_3/activate
