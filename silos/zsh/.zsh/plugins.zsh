export FZF_DEFAULT_COMMAND='rg --files --hidden --color=never --follow 2> /dev/null'
export FZF_DEFAULT_OPTS="--layout=reverse"
export FZF_CTRL_T_OPTS="$FZF_COMPLETION_OPTS"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_R_OPTS="$FZF_COMPLETION_OPTS"
export FZF_CTRL_R_COMMAND="$FZF_DEFAULT_COMMAND"

# Use fd (https://github.com/sharkdp/fd) instead of the default find
# command for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
[ -f /etc/profile.d/autojump.sh ] && . /etc/profile.d/autojump.sh
[ -f /usr/share/zsh/plugins/zsh-notify/notify.plugin.zsh ] && . /usr/share/zsh/plugins/zsh-notify/notify.plugin.zsh
zstyle ':notify:*' command-complete-timeout 8

[ -f $HOME/.asdf/asdf.sh ] && . $HOME/.asdf/asdf.sh

export PATH="${HOME}/.asdf/installs/elixir/`asdf current elixir | awk '{print $1}'`/.mix:${PATH}"
