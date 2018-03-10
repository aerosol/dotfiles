[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS="-e --reverse --ansi --color=bw"
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'

source /etc/profile.d/autojump.sh

bgnotify_threshold=4  ## set your own notification threshold

function notify_formatted {
  ## $1=exit_status, $2=command, $3=elapsed_time
  [ $1 -eq 0 ] && title="Holy Smokes Batman!" || title="Holy Graf Zeppelin!"
  bgnotify "$title -- after $3 s" "$2";
}

source $HOME/.zsh-background-notify/bgnotify.plugin.zsh

#. /Users/hq1/dev/erlang/18_3/activate
