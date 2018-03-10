load-local-conf() {
  if [[ -f .envrc && -f .autosource && -r .envrc ]]; then
    source .envrc
    echo "\e[32mLocal environment sourced:"
    echo "$(<.envrc | grep "^export" | tr '=' ' ' | awk '{print $2}' | tr '\n' ' ')"
  fi
  if [[ -f .envrc.local && -f .autosource && -r .envrc.local ]]; then
    source .envrc.local
    echo "\e[32mLocal (custom) environment sourced:"
    echo "$(<.envrc.local | grep "^export" | tr '=' ' ' | awk '{print $2}' | tr '\n' ' ')"
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

glg() {
  git log --oneline --color=always \
      --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
  fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
      --bind "ctrl-m:execute:
                (grep -o '[a-f0-9]\{7\}' | head -1 |
                xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
                {}
FZF-EOF"
}

fshow() {
  local out shas sha q k
  while out=$(
      git log --oneline --color=always \
          --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
      fzf --ansi --multi --no-sort --reverse --query="$q" \
          --print-query --expect=ctrl-d --toggle-sort=\`); do
    q=$(head -1 <<< "$out")
    k=$(head -2 <<< "$out" | tail -1)
    shas=$(sed '1,2d;s/^[^a-z0-9]*//;/^$/d' <<< "$out" | awk '{print $1}')
    [ -z "$shas" ] && continue
    if [ "$k" = ctrl-d ]; then
      git diff --color=always $shas | less -R
    else
      for sha in $shas; do
        git show --color=always $sha | less -R
      done
    fi
  done
}
