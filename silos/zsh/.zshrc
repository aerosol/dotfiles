export MUH_THEME="dark"
if [[ "$OSTYPE" == "darwin"* ]]; then
  source $HOME/.zsh/mac.zsh
else
  source $HOME/.zsh/linux.zsh
fi
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
source $HOME/.zsh/colors.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
