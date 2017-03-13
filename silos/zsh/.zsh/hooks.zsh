test -s "./.envrc" && load-local-conf
add-zsh-hook chpwd load-local-conf
