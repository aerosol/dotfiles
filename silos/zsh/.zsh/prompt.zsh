zstyle ':vcs_info:git:*' formats '%b '
precmd() { vcs_info }

function precmd () {
		vcs_info
}
setopt PROMPT_SUBST

PROMPT='%F{cyan}%M$f:%F{blue}$(tmux display-message -p "#S") %f%F{green}%~%f %(?..%F{red}⛈ %? %f)%F{blue}${vcs_info_msg_0_}%f$ '
