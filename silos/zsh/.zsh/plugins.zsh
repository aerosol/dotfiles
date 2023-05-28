export FZF_DEFAULT_COMMAND='fd --type file 2> /dev/null'
export FZF_DEFAULT_OPTS='
  --layout=reverse
  --color=bg+:#073642,bg:#000000,spinner:#719e07,hl:#586e75
  --color=fg:#839496,header:#586e75,info:#cb4b16,pointer:#719e07
  --color=marker:#719e07,fg+:#839496,prompt:#719e07,hl+:#719e07
'
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

[ -f $HOME/.asdf/asdf.sh ] && . $HOME/.asdf/asdf.sh
[ -f /opt/asdf-vm/asdf.sh ] && . /opt/asdf-vm/asdf.sh

export PATH="${HOME}/.asdf/installs/elixir/`asdf current elixir | awk '{print $2}'`/.mix:${PATH}"
