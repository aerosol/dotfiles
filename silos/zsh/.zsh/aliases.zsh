alias ls="ls -Galh"
alias o='open'
alias get='wget -t0 -c'
alias vim='nvim'

alias rest-get="curl -i -H \"Accept: application/json\""
alias rest-post="curl -i -H \"Accept: application/json\" \
  -H \"Content-Type: application/json\" -X POST -d "
alias rest-put="curl -i -H \"Accept: application/json\" \
  -H \"Content-Type: application/json\" -X PUT -d "
alias rest-delete="curl -i -H \"Accept: application/json\" -X DELETE "
alias rest-post-put="curl -i -H \"Accept: application/json\" \
  -H \"X-HTTP-Method-Override: PUT\" -X POST -d "

p() { passy "$*" | pbcopy; }

