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
Plug 'DanilaMihailov/beacon.nvim'
Plug 'ajh17/VimCompletesMe'
Plug 'alx741/vim-rustfmt'
Plug 'andymass/vim-matchup'
Plug 'christoomey/vim-tmux-navigator'
Plug 'dbmrq/vim-ditto'
Plug 'elixir-lang/vim-elixir', {'for': ['eelixir', 'elixir']}
Plug 'gcmt/wildfire.vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'gregsexton/MatchTag', {'for': ['html', 'eelixir']}
Plug 'janko-m/vim-test'
Plug 'jparise/vim-graphql'
Plug 'jreybert/vimagit'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'kristijanhusak/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lfv89/vim-interestingwords'
Plug 'mattn/gist-vim'
Plug 'mattn/vim-sqlfmt'
Plug 'mattn/webapi-vim'
Plug 'mhinz/vim-mix-format'
Plug 'mhinz/vim-signify'
Plug 'natebosch/vim-lsc'
Plug 'psliwka/vim-smoothie'
Plug 'scrooloose/nerdcommenter'
Plug 'sjl/tslime.vim'
Plug 'thinca/vim-qfreplace'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
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
