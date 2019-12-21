[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS="-e --reverse --ansi --color=bw"
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'

source /etc/profile.d/autojump.sh

bgnotify_threshold=4  ## set your own notification threshold

source /usr/share/zsh/plugins/zsh-notify/notify.plugin.zsh
zstyle ':notify:*' command-complete-timeout 8

function bgnotify_formatted {
  ## $1=exit_status, $2=command, $3=elapsed_time
  [ $1 -eq 0 ] && title="$2" || title="$2 FAILED"
  bgnotify "$title -- after $3 s" "$2";
}
