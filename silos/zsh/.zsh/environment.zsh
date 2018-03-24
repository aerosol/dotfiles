export EDITOR=vim
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PAGER=less
export ZSH_CACHE="$HOME/.zsh_cache"
mkdir -p $ZSH_CACHE
export PATH=$HOME/.local/bin:$PATH

source $HOME/.asdf/asdf.sh
