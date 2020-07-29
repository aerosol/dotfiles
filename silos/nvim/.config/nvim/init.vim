call plug#begin('~/.config/nvim/bundle/')
Plug 'jparise/vim-graphql'
Plug 'APZelos/blamer.nvim'
Plug 'DanilaMihailov/beacon.nvim'
Plug 'airblade/vim-rooter'
Plug 'andymass/vim-matchup'
Plug 'christoomey/vim-tmux-navigator'
Plug 'elixir-lang/vim-elixir', {'for': ['eelixir', 'elixir']}
Plug 'gcmt/wildfire.vim'
Plug 'gregsexton/MatchTag', {'for': ['html', 'eelixir']}
Plug 'janko-m/vim-test'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'jreybert/vimagit'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'kristijanhusak/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'lfv89/vim-interestingwords'
Plug 'mattn/gist-vim'
Plug 'mattn/vim-sqlfmt'
Plug 'mattn/webapi-vim'
Plug 'mhinz/vim-signify'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
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
Plug 'dbmrq/vim-ditto'
Plug 'junegunn/limelight.vim'
Plug 'reedes/vim-colors-pencil'
call plug#end()

set termguicolors
set background=dark
colorscheme dumbo
