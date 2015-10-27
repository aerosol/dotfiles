setopt AUTO_CD
setopt EXTENDED_GLOB

### }}}
### env {{{

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
ZSH_SYNTAX_HIGLIGHTING="/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
AUTOJUMP="/usr/local/etc/autojump.zsh"


autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

setopt RC_QUOTES
export GREP_COLOR='37;45'
export GREP_OPTIONS='--color=auto'
export LSCOLORS="exfxcxdxbxegedabagacad"
export PAGER=less
export HOMEBREW_VERBOSE=1
export EDITOR=vim

### }}}
### aliases {{{

alias ls="ls -G"
alias ll='ls -lh'
alias o='open'
alias get='wget -t0 -c'

alias vim='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
alias v='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'

p() { passy "$*" | pbcopy; }

# Make fileutils verbose
for c in cp rm chmod chown rename; do
    alias $c="$c -v"
done

# CURL {{{
alias rest-get="curl -i -H \"Accept: application/json\""
alias rest-post="curl -i -H \"Accept: application/json\" \
    -H \"Content-Type: application/json\" -X POST -d "
alias rest-put="curl -i -H \"Accept: application/json\" \
    -H \"Content-Type: application/json\" -X PUT -d "
alias rest-delete="curl -i -H \"Accept: application/json\" -X DELETE "
alias rest-post-put="curl -i -H \"Accept: application/json\" \
    -H \"X-HTTP-Method-Override: PUT\" -X POST -d "
# }}}

alias gis='gist -pcs'

### }}}
### completion {{{

# Load and initialize the completion system ignoring insecure directories.
fpath=($HOME/.zsh/func $fpath)
typeset -U fpath
autoload -Uz compinit && compinit
setopt COMPLETE_IN_WORD # Complete from both ends of a word.
setopt ALWAYS_TO_END    # Move cursor to the end of a completed word.
setopt PATH_DIRS        # Perform path search even on command names with /.
setopt AUTO_MENU        # Show completion menu on a succesive tab press.
setopt AUTO_LIST        # Automatically list choices on ambiguous completion.
setopt AUTO_PARAM_SLASH # If completed parameter is a dir, add a trailing /.
unsetopt MENU_COMPLETE  # Do not autoselect the first completion entry.
unsetopt FLOW_CONTROL   # Disable start/stop characters in shell editor.
# Treat these characters as part of a word.
WORDCHARS='*?_-.[]~&;!#$%^(){}<>'
# Use caching to make completion for cammands such as dpkg and apt usable.
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path "${ZDOTDIR:-$HOME}/.zcompcache"

# Case-insensitive (all), partial-word, and then substring completion.
if zstyle -t ':prezto:module:completion:*' case-sensitive; then
    zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
    setopt CASE_GLOB
else
    zstyle ':completion:*' matcher-list \
        'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
    unsetopt CASE_GLOB
fi

# Group matches and describe.
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:corrections' format ' %F{green}-- %d (errors: %e) --%f'
zstyle ':completion:*:descriptions' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes

# Fuzzy match mistyped completions.
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# Increase the number of errors based on the length of the typed word.
zstyle -e ':completion:*:approximate:*' \
    max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'

# Don't complete unavailable commands.
zstyle ':completion:*:functions' ignored-patterns '(_*|pre(cmd|exec))'

# Array completion element sorting.
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters

# Directories
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:*:cd:*' \
    tag-order local-directories directory-stack path-directories
zstyle ':completion:*:*:cd:*:directory-stack' menu yes select
zstyle ':completion:*:-tilde-:*' group-order \
    'named-directories' 'path-directories' 'users' 'expand'
zstyle ':completion:*' squeeze-slashes true

# History
zstyle ':completion:*:history-words' stop yes
zstyle ':completion:*:history-words' remove-all-dups yes
zstyle ':completion:*:history-words' list false
zstyle ':completion:*:history-words' menu yes

# Environmental Variables
zstyle ':completion::*:(-command-|export):*' \
    fake-parameters ${${${_comps[(I)-value-*]#*,}%%,*}:#-*-}

# Kill
zstyle ':completion:*:*:*:*:processes' \
    command 'ps -u $USER -o pid,user,comm -w'
zstyle ':completion:*:*:kill:*:processes' \
    list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;36=0=01'
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:*:kill:*' force-list always
zstyle ':completion:*:*:kill:*' insert-ids single
# }}}
### prompt {{{
autoload -U colors
colors

function collapse_pwd {
echo $(pwd | sed -e "s,^$HOME,~,")
}

# Load and execute the prompt theming system.
autoload -Uz promptinit && promptinit
autoload -Uz vcs_info
zstyle ':vcs_info:*' stagedstr '%F{28}+'
zstyle ':vcs_info:*' unstagedstr '%F{11}-'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
zstyle ':vcs_info:*' enable git svn

precmd () {
    exitcode=$?
    if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
        zstyle ':vcs_info:*' formats ' [%F{green}%b%c%u%F{blue}]'
    } else {
    zstyle ':vcs_info:*' formats ' [%F{green}%b%c%u%F{red}*%F{blue}]'
}
vcs_info
}

setopt prompt_subst
PROMPT='
%* %n@%m %F{cyan}$(collapse_pwd) \
    ${vcs_info_msg_0_}%{$terminfo[bold]$fg[red]%}%E %{$reset_color%}
$ '

### }}}
### history {{{

HISTFILE="$HOME/.zhistory"
HISTSIZE=10000
SAVEHIST=10000
setopt BANG_HIST
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY

### }}}
### moar commandline & keybindings {{{

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -e
bindkey '^[[Z' reverse-menu-complete
bindkey '^P' up-line-or-search
bindkey '^N' down-line-or-search

### }}}
### syntaxt highlighting {{{
[[ -e $ZSH_SYNTAX_HIGHLIGHTING ]] && source $ZSH_SYNTAX_HIGLIGHTING
### }}}
export PATH=$PATH:/Users/hq1/bin
export PATH=/usr/local/bin:$PATH

load-local-conf() {
     if [[ -f .env && -r .env ]]; then
       source .env
     fi
}

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source /Users/hq1/.rvm/scripts/rvm
