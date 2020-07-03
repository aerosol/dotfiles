alias ls="exa"
alias ll="exa -l"
alias get='wget -t0 -c'
alias mt='mix test'
alias mps='iex -S mix phoenix.server'
alias ii='iex -S mix'
alias kab='pkill beam.smp'
alias kat='tmux kill-session -a'
alias g='git'
alias gst='git st'
alias gco='git checkout'
alias gp='git pub'
alias gf='git fetch'
alias ag='rg'
alias vim='nvim'
alias v='nvim'
alias d="kitty +kitten diff"

autoload zmv
alias zmv='noglob zmv'
alias zcp='noglob zmv -C'
alias zln='noglob zmv -L'
alias zsy='noglob zmv -Ls'
alias repry='fc -e - mix\ test=iex\ -S\ mix\ test\ --trace mix\ test'

