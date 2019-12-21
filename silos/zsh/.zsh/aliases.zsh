alias ls="exa"
alias ll="exa -l"
alias o='xdg-open'
alias get='wget -t0 -c'
alias mps='iex -S mix phoenix.server'
alias ii='iex -S mix'
alias kab='pkill beam.smp'
alias kat='tmux kill-session -a'
alias g='git'
alias ag='rg'
alias vim='nvim'
alias v='nvim .'
alias t='task'
alias open='xdg-open'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
alias d="kitty +kitten diff"

#p() { passy "$*" | pbcopy; }

man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

wiki() {
    dig +short txt $1.wp.dg.cx
}


hpg() { heroku pg:credentials:url -a $1 | grep postgres | awk '{print $1}' }

pgh() { pgcli $(hpg app-$1) }
