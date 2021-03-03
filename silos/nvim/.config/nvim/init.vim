" hq1's vim files
" minimalists and/or purists will not be amused
"
" settings:
" --------
" plugin/00-keymaps.vim
" plugin/01-commands.vim
" plugin/02-augroups.vim
" plugin/03-functions.vim
" plugin/04- ???
" plugin/05-gvars.vim
" plugin/06-settings.vim
" plugin/07- ???
" plugin/08-language-server.vim
"
" colors:
" -------
" colors/dumbo_light.vim
"
" filetypes:
" ----------
" after/ftplugin/clojure.vim
" after/ftplugin/elixir.vim
" after/ftplugin/elm.vim
" after/ftplugin/erlang.vim
" after/ftplugin/gitrebase.vim
" after/ftplugin/help.vim
" after/ftplugin/html.vim
" after/ftplugin/make.vim
" after/ftplugin/racket.vim
" after/ftplugin/rust.vim
" after/ftplugin/sql.vim
" after/ftplugin/vagrant.vim
" after/ftplugin/yaml.vim

set termguicolors
if $MUH_THEME == 'light'
  set background=light
  colorscheme dumbo_light
else
  set background=dark
  colorscheme dumbo
endif

" plugins:

call plug#begin('~/.config/nvim/bundle/')
Plug 'alx741/vim-rustfmt', {'for': ['rust']}
Plug 'andymass/vim-matchup'
Plug 'ap/vim-css-color'
Plug 'christoomey/vim-tmux-navigator'
Plug 'elixir-lang/vim-elixir', {'for': ['eelixir', 'elixir']}
Plug 'gcmt/wildfire.vim'
Plug 'gregsexton/MatchTag', {'for': ['html', 'eelixir']}
Plug 'hrsh7th/nvim-compe'
Plug 'janko-m/vim-test', {'for': ['elixir', 'rust']}
Plug 'jparise/vim-graphql', {'for': ['graphql']}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'kristijanhusak/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lfv89/vim-interestingwords'
Plug 'machakann/vim-highlightedyank'
Plug 'mattn/vim-gist'
Plug 'mattn/vim-sqlfmt'
Plug 'mattn/webapi-vim'
Plug 'mhinz/vim-mix-format'
Plug 'mhinz/vim-signify'
Plug 'neovim/nvim-lspconfig'
Plug 'scrooloose/nerdcommenter'
Plug 'sjl/tslime.vim'
Plug 'thinca/vim-qfreplace'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'vim-scripts/BufOnly.vim'
Plug 'wellle/targets.vim'
Plug 'yuttie/comfortable-motion.vim'
call plug#end()
