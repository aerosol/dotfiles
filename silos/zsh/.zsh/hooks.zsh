test -s "./.env" && load-local-conf
add-zsh-hook chpwd load-local-conf
