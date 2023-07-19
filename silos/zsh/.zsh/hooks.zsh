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

[ -f ./.envrc ] && load-local-conf
add-zsh-hook chpwd load-local-conf

# always chdir to the latest dir
_lastdir=$ZSH_CACHE/_lastdir
[ -f $_lastdir ] && cd $(<$_lastdir)

track() {
	echo $PWD > $_lastdir
}

add-zsh-hook chpwd track
