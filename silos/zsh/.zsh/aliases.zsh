alias ls="exa --icons"
alias ll="ls -al"
alias get='wget -t0 -c'
alias mt='mix test'
alias mps='iex -S mix phoenix.server'
alias ii='cd . && iex -S mix'
alias kab='pkill beam.smp'
alias kat='tmux kill-session -a'
alias g='git'
alias m='mix'
alias gst='git st'
alias gco='git checkout'
alias gp='git pub'
alias gf='git fetch'
alias grim='git fetch && git checkout main && git pull origin main && git checkout - && git rebase -i origin/main'
alias grima='git fetch && git checkout master && git pull origin master && git checkout - && git rebase -i origin/master'
alias grc='git rebase --continue'
alias ag='rg'
alias vim='nvim'
alias d="kitty +kitten diff"
alias yt="ytfzf -t -s"

autoload zmv
alias zmv='noglob zmv'
alias zcp='noglob zmv -C'
alias zln='noglob zmv -L'
alias zsy='noglob zmv -Ls'
alias repry='fc -e - mix\ test=iex\ -S\ mix\ test\ --trace mix\ test'

