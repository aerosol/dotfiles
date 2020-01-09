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

p() {
  pass=$(ssh -v mtod -t "P/p.py $1")
  echo $pass | tail -n1 | xsel --clipboard --input
}

note() { nvim "/home/hq1/priv/Notes/$(date "+%Y-%m-%d").md"; }
peep() { bat --style=numbers --color=always $(rg -il . | fzf --ansi --preview "bat --color=always --style=numbers {}") }
