load-local-conf() {
  if [[ -f .envrc && -f .autosource && -r .envrc ]]; then
    source .envrc
    echo "\e[32mLocal environment sourced:"
    echo "$(<.envrc | grep "^export" | tr '=' ' ' | awk '{print $2}' | tr '\n' ' ')"
  fi
}

autoload zmv
alias zmv='noglob zmv'
alias zcp='noglob zmv -C'
alias zln='noglob zmv -L'
alias zsy='noglob zmv -Ls'

iprof() {
  if [[ $# > 0 ]]; then
      if [[ -z $TMUX ]]; then
          # TODO: source an ENV var here
          echo "\033]50;SetProfile=$1\a"
      else
          echo "\033Ptmux;\033\033]50;SetProfile=$1\007\033\\"
      fi
      export ITERM_PROFILE="$1"
  else
      echo $ITERM_PROFILE
  fi
}
