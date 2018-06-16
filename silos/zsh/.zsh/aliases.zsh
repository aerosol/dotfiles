alias ls="ls -Galh --color"
alias o='xdg-open'
alias get='wget -t0 -c'
alias mps='iex -S mix phoenix.server'
alias ii='iex -S mix'
alias kab='pkill beam.smp'
alias kat='tmux kill-session -a'
alias g='git'
alias ag='rg'
alias vim='nvim'

alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

#p() { passy "$*" | pbcopy; }



pgcli() { (cd ~/dev && pipenv run pgcli $*); }

hpg() { heroku pg:credentials:url -a $1 | grep postgres | awk '{print $1}' }

pgh() { pgcli $(hpg app-$1) }
