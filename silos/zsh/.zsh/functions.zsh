load-local-conf() {
  if [[ -f .envrc && -f .autosource && -r .envrc ]]; then
    source .envrc
    echo "\e[32mLocal environment sourced:"
    echo "$(<.envrc | grep "^export" | tr '=' ' ' | awk '{print $2}' | tr '\n' ' ')"
  fi
}
