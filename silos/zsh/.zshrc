source $HOME/.zsh/environment.zsh
source $HOME/.zsh/aliases.zsh
source $HOME/.zsh/tweaks.zsh
source $HOME/.zsh/history.zsh
source $HOME/.zsh/prompt.zsh
source $HOME/.zsh/keys.zsh
source $HOME/.zsh/functions.zsh
source $HOME/.zsh/hooks.zsh
source $HOME/.zsh/completions.zsh
source $HOME/.zsh/plugins.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/vault vault

#track-current

#if [ -f ~/bin/.secret/mood ]; then
  #~/bin/.secret/mood
#fi
