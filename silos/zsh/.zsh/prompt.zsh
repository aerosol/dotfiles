zstyle ':vcs_info:git:*' formats '%b '
precmd() { vcs_info }
PROMPT='
%F{cyan}%M %f%F{green}%~%f %(?..%F{red}⛈ %? %f)%F{blue}${vcs_info_msg_0_}%f$ '
