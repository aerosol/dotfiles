zstyle ':vcs_info:git:*' formats '%b '
precmd() { vcs_info }

function precmd () {
		vcs_info
}

function precmd {
	print -Pn "\e]0;zsh%L %(1j,%j job%(2j|s|); ,)%~\a"
}

function preexec {
	printf "\033]0;%s\a" "$@"
}

PROMPT='%F{cyan}%M %f%F{green}%~%f %(?..%F{red}⛈ %? %f)%F{blue}${vcs_info_msg_0_}%f$ '
