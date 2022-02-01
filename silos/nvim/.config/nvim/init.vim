" hq1's vim files
" minimalists and/or purists will not be amused
"
" settings:
" --------
" plugin/00-keymaps.vim
" plugin/01-commands.vim
" plugin/02-augroups.vim
" plugin/03-functions.vim
" plugin/04-???
" plugin/05-gvars.vim
" plugin/06-settings.vim
" plugin/07-treesitter.vim
" plugin/08-language-server.vim
"
" colors:
" -------
" colors/dumbo_light.vim
" colors/dumbo.vim

set termguicolors
if $MUH_THEME == 'light'
  set background=light
  colorscheme dumbo_light
else
  set background=dark
  colorscheme dumbo
endif

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

" plugins:
" --------
call plug#begin('~/.config/nvim/bundle/')
Plug 'alx741/vim-rustfmt', {'for': ['rust']}
Plug 'andymass/vim-matchup'
Plug 'christoomey/vim-tmux-navigator'
Plug 'darrikonn/vim-gofmt', { 'do': ':GoUpdateBinaries' }
Plug 'dhruvasagar/vim-markify'
Plug 'elixir-lang/vim-elixir', {'for': ['eelixir', 'elixir']}
Plug 'gcmt/wildfire.vim'
Plug 'gregsexton/MatchTag', {'for': ['html', 'eelixir']}
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/vim-vsnip'
Plug 'janko-m/vim-test', {'for': ['elixir', 'rust', 'go']}
Plug 'jparise/vim-graphql', {'for': ['graphql']}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'karb94/neoscroll.nvim'
Plug 'kosayoda/nvim-lightbulb'
Plug 'kristijanhusak/vim-dadbod-completion'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lfv89/vim-interestingwords'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'machakann/vim-highlightedyank'
Plug 'mattn/vim-gist'
Plug 'mattn/vim-sqlfmt'
Plug 'mattn/webapi-vim'
Plug 'mhinz/vim-mix-format'
Plug 'mhinz/vim-signify'
Plug 'neovim/nvim-lspconfig'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'nvim-lua/lsp-status.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'romainl/vim-qf'
Plug 'scrooloose/nerdcommenter'
Plug 'simrat39/rust-tools.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'sjl/tslime.vim'
Plug 'thinca/vim-qfreplace'
Plug 'tpope/vim-dadbod'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tversteeg/registers.nvim'
Plug 'vim-scripts/BufOnly.vim'
Plug 'wellle/targets.vim'
call plug#end()

lua require('neoscroll').setup()
lua require 'colorizer'.setup { 'css'; 'vim'; }
