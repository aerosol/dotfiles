call plug#begin('~/.config/nvim/bundle/')
Plug 'liuchengxu/vista.vim'
Plug 'natebosch/vim-lsc'
Plug 'ajh17/VimCompletesMe'
Plug 'APZelos/blamer.nvim'
Plug 'DanilaMihailov/beacon.nvim'
Plug 'airblade/vim-rooter'
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
else
  set background=dark
  colorscheme dumbo
endif

let g:lsc_server_commands = {
 \  'elixir': {
 \    'command': '/home/hq1/dev/elixir-ls/rel/language_server.sh',
 \    'log_level': -1,
 \    'suppress_stderr': v:true
 \  }
 \}

let g:lsc_auto_map = {
 \  'GoToDefinition': 'gd',
 \  'FindReferences': 'gr',
 \  'Rename': 'gR',
 \  'ShowHover': 'K',
 \  'FindCodeActions': 'ga',
 \  'Completion': 'omnifunc',
 \  'DocumentSymbol': 'go',
 \  'WorkspaceSymbol': 'gS',
 \  'SignatureHelp': 'gm'
 \}

nmap g? :LSClientLineDiagnostics<CR>

set completeopt=menu,menuone,noinsert,noselect

let g:lsc_enable_autocomplete  = v:true
let g:lsc_enable_diagnostics   = v:true
let g:lsc_reference_highlights = v:true
let g:lsc_trace_level          = 'off'

