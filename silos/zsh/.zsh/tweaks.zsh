setopt AUTO_CD
setopt EXTENDED_GLOB
setopt PROMPT_SUBST
setopt RC_QUOTES

autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

# Make fileutils verbose
for c in cp rm chmod chown rename; do
  alias $c="$c -v"
done

autoload -U colors
colors

