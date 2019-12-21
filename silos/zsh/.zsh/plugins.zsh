[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS="-e --reverse --ansi --color=dark"
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'

source /etc/profile.d/autojump.sh

source /usr/share/zsh/plugins/zsh-notify/notify.plugin.zsh
zstyle ':notify:*' command-complete-timeout 8

source $HOME/.asdf/asdf.sh
