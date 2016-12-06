load-local-conf() {
  if [[ -f .env && -f .autosource && -r .env ]]; then
    source .env
    echo "\e[32mLocal environment sourced:"
    echo "$(<.env | tr '=' ' ' | awk '{print $2}' | tr '\n' ' ')"
  fi
}
