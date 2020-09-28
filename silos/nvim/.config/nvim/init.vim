" plugins:
" --------
" plugin/00-keymaps.vim
" plugin/01-commands.vim
" plugin/02-completion.vim
" plugin/03-functions.vim
" plugin/04-default.vim
" plugin/05-plug-settings.vim
" plugin/06-settings.vim
" plugin/07-writing.vim
" plugin/08-language-server.vim
 
call plug#begin('~/.config/nvim/bundle/')
Plug 'altercation/vim-colors-solarized'
Plug 'DanilaMihailov/beacon.nvim'
Plug 'airblade/vim-rooter'
Plug 'ajh17/VimCompletesMe'
Plug 'andymass/vim-matchup'
Plug 'christoomey/vim-tmux-navigator'
Plug 'dbmrq/vim-ditto'
Plug 'elixir-lang/vim-elixir', {'for': ['eelixir', 'elixir']}
Plug 'gcmt/wildfire.vim'
Plug 'gregsexton/MatchTag', {'for': ['html', 'eelixir']}
Plug 'janko-m/vim-test'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'jparise/vim-graphql'
Plug 'jreybert/vimagit'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'kristijanhusak/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'lfv89/vim-interestingwords'
Plug 'mattn/gist-vim'
Plug 'mattn/vim-sqlfmt'
Plug 'mattn/webapi-vim'
Plug 'mhinz/vim-signify'
Plug 'natebosch/vim-lsc'
Plug 'psliwka/vim-smoothie'
Plug 'scrooloose/nerdcommenter'
Plug 'sgur/vim-editorconfig'
Plug 'sjl/tslime.vim'
Plug 'thinca/vim-qfreplace'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise', {'for': ['elixir', 'ruby']}
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'vim-erlang/vim-erlang-compiler', {'for': 'erlang'}
Plug 'vim-erlang/vim-erlang-omnicomplete', {'for': 'erlang'}
Plug 'vim-erlang/vim-erlang-runtime', {'for': 'erlang'}
Plug 'vim-erlang/vim-erlang-tags', {'for': 'erlang'}
Plug 'zhaocai/GoldenView.Vim'
call plug#end()

set termguicolors
if $MUH_THEME == 'light'
  set background=light
  colorscheme dumbo_light
  set cursorline
else
  set background=dark
  colorscheme dumbo
endif
