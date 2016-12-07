[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS="-e --reverse --ansi"
export FZF_DEFAULT_COMMAND='ag -g ""'

export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

. /Users/hq1/dev/erlang/18_3/activate
