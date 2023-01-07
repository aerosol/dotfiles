zstyle ':vcs_info:git:*' formats '%b '
precmd() { vcs_info }
PROMPT='
%F{cyan}%M %f%~ %F{blue}${vcs_info_msg_1_}%f%(?..%F{red}⛈ %? %f)$ '
RPROMPT='%F{cyan}%D{%T}%f'
