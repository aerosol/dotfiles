export EDITOR=nvim
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PAGER=less
export ZSH_CACHE="$HOME/.zsh_cache"
mkdir -p $ZSH_CACHE
export PATH=$HOME/.local/bin:$PATH

# https://superuser.com/questions/1118878/using-notify-send-in-a-tmux-session-shows-error-no-notification
unset DBUS_SESSION_BUS_ADDRESS

source $HOME/.asdf/asdf.sh
