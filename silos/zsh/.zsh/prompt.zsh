autoload -Uz promptinit && promptinit
autoload -Uz vcs_info
zstyle ':vcs_info:*' stagedstr '%F{28}+'
zstyle ':vcs_info:*' unstagedstr '%F{11}-'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
zstyle ':vcs_info:*' enable git svn

precmd () {
  exitcode=$?
  if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
    zstyle ':vcs_info:*' formats ' [%F{green}%b%c%u%F{blue}]'
  } else {
    zstyle ':vcs_info:*' formats ' [%F{green}%b%c%u%F{red}*%F{blue}]'
  }
  vcs_info
}

function collapse_pwd {
  echo $(pwd | sed -e "s,^$HOME,~,")
}


PROMPT='
%* %n@%m %F{cyan}$(collapse_pwd) \
  ${vcs_info_msg_0_}%{$terminfo[bold]$fg[red]%}%E %{$reset_color%}
$ '

