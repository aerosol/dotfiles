autoload -Uz promptinit && promptinit
autoload -Uz vcs_info
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:*' unstagedstr '-'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b:%r'
zstyle ':vcs_info:*' enable git svn

precmd () {
  exitcode=$?
  if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
    zstyle ':vcs_info:*' formats ' ☛  %b%c%u'
  } else {
    zstyle ':vcs_info:*' formats ' ☛  %b%c%u*'
  }
  vcs_info
}

function collapse_pwd {
  echo $(pwd | sed -e "s,^$HOME,~,")
}


PROMPT='%F{blue}${vcs_info_msg_0_}%f $(collapse_pwd) $ '

