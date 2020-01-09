[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS="-e --reverse --ansi --color=dark"
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'


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
source /etc/profile.d/autojump.sh

source /usr/share/zsh/plugins/zsh-notify/notify.plugin.zsh
zstyle ':notify:*' command-complete-timeout 8

source $HOME/.asdf/asdf.sh
