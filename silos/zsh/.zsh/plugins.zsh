[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export BAT_THEME="1337"
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*" --glob "!node_modules/*"'
export FZF_COMPLETION_OPTS="--preview '(bat --color=always {} || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_CTRL_T_OPTS="$FZF_COMPLETION_OPTS"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='--exact'
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
 --height 40% --layout=reverse --no-border
 --color=fg:#cbccc6,hl:#707a8c
 --color=fg+:#707a8c,bg+:#191e2a,hl+:#ffcc66
 --color=info:#73d0ff,prompt:#707a8c,pointer:#cbccc6
 --color=marker:#73d0ff,spinner:#73d0ff,header:#d4bfff'

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
