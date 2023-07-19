autoload -Uz promptinit && promptinit
autoload -Uz vcs_info

setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt EXTENDED_GLOB
setopt PROMPT_SUBST
setopt RC_QUOTES
setopt PROMPT_SUBST

autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

# Make fileutils verbose
for c in cp rm chmod chown rename; do
  alias $c="$c -v"
done

autoload -U colors
colors
