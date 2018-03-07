[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS="-e --reverse --ansi --color=bw"
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'

source /etc/profile.d/autojump.sh

#. /Users/hq1/dev/erlang/18_3/activate
