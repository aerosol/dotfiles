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
Plug 'camspiers/lens.vim'
Plug 'DanilaMihailov/beacon.nvim'
Plug 'alx741/vim-rustfmt'
Plug 'andymass/vim-matchup'
Plug 'ap/vim-css-color'
Plug 'christoomey/vim-tmux-navigator'
Plug 'elixir-lang/vim-elixir', {'for': ['eelixir', 'elixir']}
Plug 'gcmt/wildfire.vim'
Plug 'gregsexton/MatchTag', {'for': ['html', 'eelixir']}
Plug 'hrsh7th/nvim-compe'
Plug 'janko-m/vim-test'
Plug 'jparise/vim-graphql'
Plug 'jreybert/vimagit'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-peekaboo'
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
Plug 'neovim/nvim-lspconfig'
Plug 'scrooloose/nerdcommenter'
Plug 'sjl/tslime.vim'
Plug 'thinca/vim-qfreplace'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'wellle/targets.vim'
call plug#end()

set termguicolors
if $MUH_THEME == 'light'
  set background=light
  colorscheme dumbo_light
else
  set background=dark
  colorscheme dumbo
endif
