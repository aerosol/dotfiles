call plug#begin('~/.config/nvim/bundle/')
Plug 'APZelos/blamer.nvim'
Plug 'airblade/vim-rooter'
Plug 'alvan/vim-closetag', {'for': ['html', 'eelixir']}
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
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'liuchengxu/space-vim-dark'
Plug 'mattn/gist-vim'
Plug 'mattn/vim-sqlfmt'
Plug 'mattn/webapi-vim'
Plug 'mhinz/vim-signify'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'psliwka/vim-smoothie'
Plug 'scrooloose/nerdcommenter'
Plug 'sgur/vim-editorconfig'
Plug 'sjl/tslime.vim'
Plug 'thinca/vim-qfreplace'
Plug 'tpope/vim-dadbod'
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
Plug 'micke/vim-hybrid'
call plug#end()

set termguicolors
set background=dark
colorscheme hybrid

hi Normal     ctermbg=NONE  guibg=NONE
hi LineNr     ctermbg=NONE  guibg=NONE
hi SignColumn ctermbg=NONE  guibg=NONE
hi Comment    guifg=#5C6370 ctermfg=59
hi Folded     guifg=#5C6370 ctermfg=59 guibg=NONE
hi NonText    guibg=NONE    guifg=#141414
hi Blamer     guifg=#333333
