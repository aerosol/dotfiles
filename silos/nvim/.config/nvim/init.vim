let $VIM        = expand('~/.config/nvim/')
let $TMP        = expand($VIM . 'tmp/')
let $BUNDLES    = expand($VIM . 'bundle/')

let g:author = 'Adam Rutkowski <hq@mtod.org>'

if !isdirectory($TMP)
  call mkdir($TMP, "p")
endif

call plug#begin($BUNDLES)
Plug 'wlangstroth/vim-racket'
Plug 'kien/rainbow_parentheses.vim', {'for': ['clojure', 'racket']}
Plug 'ElmCast/elm-vim', {'for': 'elm'}
Plug 'Shougo/deoplete.nvim'
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-rooter'
Plug 'benekastah/neomake'
Plug 'editorconfig/editorconfig-vim'
Plug 'elixir-lang/vim-elixir', {'for': ['eelixir', 'elixir']}
Plug 'ervandew/supertab'
Plug 'exu/pgsql.vim'
Plug 'gcmt/wildfire.vim'
Plug 'guns/vim-sexp', {'for': ['clojure', 'racket']}
Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}
Plug 'janko-m/vim-test'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'jreybert/vimagit', {'branch': 'master'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/gv.vim'
Plug 'junegunn/vim-easy-align'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'mhinz/vim-signify'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdcommenter'
Plug 'sjl/tslime.vim'
Plug 'stephpy/vim-yaml'
Plug 'thinca/vim-ft-clojure', {'for': 'clojure'}
Plug 'thinca/vim-qfreplace'
Plug 'tmux-plugins/vim-tmux'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-classpath', {'for': 'clojure'}
Plug 'tpope/vim-endwise', {'for': ['elixir', 'ruby']}
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fireplace', {'for': 'clojure'}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat', {'for': 'clojure'}
Plug 'tpope/vim-sexp-mappings-for-regular-people', {'for': ['clojure', 'racket']}
Plug 'tpope/vim-surround'
Plug 'venantius/vim-cljfmt', {'for': 'clojure'}
Plug 'vim-erlang/vim-erlang-compiler', {'for': 'erlang'}
Plug 'vim-erlang/vim-erlang-omnicomplete', {'for': 'erlang'}
Plug 'vim-erlang/vim-erlang-runtime', {'for': 'erlang'}
Plug 'vim-erlang/vim-erlang-tags', {'for': 'erlang'}
Plug 'w0ng/vim-hybrid'
Plug 'wellle/tmux-complete.vim'
Plug 'zhaocai/GoldenView.Vim'
Plug 'google/vim-searchindex'
Plug 'frankier/neovim-colors-solarized-truecolor-only'
Plug 'terryma/vim-multiple-cursors'
Plug 'jaxbot/semantic-highlight.vim'
call plug#end()

set termguicolors

let g:sexp_filetypes = 'clojure,scheme,lisp,racket'
"let g:ref_cache_dir = expand($TMP . '/vim_ref_cache/')
"let g:ref_open = 'split'
"let g:ref_use_vimproc = 1
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
let g:SuperTabCrMapping = 1
let g:SuperTabDefaultCompletionType = "context"
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 0
let g:erlang_tags_ignore = '_rel'
let g:filebeagle_show_hidden=1
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
let g:gist_post_private = 1
let g:goldenview__enable_default_mapping = 0
let g:signify_line_highlight = 0
let g:signify_mapping_next_hunk = ']c'
let g:signify_mapping_prev_hunk = '[c'
let g:signify_skip_filetype = { 'vim': 1, 'diff': 1 }
let g:signify_update_on_focusgained = 1
let g:sql_type_default = 'pgsql'
let g:tslime_ensure_trailing_newlines = 1
let g:vim_markdown_folding_disabled = 1
let g:rooter_patterns = ['mix.exs', '.git/']

let mapleader=" "
nnoremap <leader><space> :Commands<CR>
set shell=/bin/zsh

set background=dark
colorscheme hybrid

syntax sync minlines=256

inoremap jk <Esc>

set clipboard=unnamed

vmap > >gv
vmap < <gv
nnore> >>
nnore< <<

nnoremap j gj
nnoremap k gk

set number
set relativenumber

set backspace=indent,eol,start

set ignorecase
set smartcase
set gdefault

set splitright

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=4

set textwidth=79
set nowrap

set hlsearch
set incsearch

set more
set cmdheight=3
set hidden
set nosol

set scrolloff=3
set sidescrolloff=3

set synmaxcol=256
set cpoptions+=$

set showmatch
set matchtime=5

set notimeout
set ttimeout
set ttimeoutlen=10

set completeopt=longest,menuone
set ofu=syntaxcomplete#Complete

set fillchars=stl:\ ,stlnc:۰,vert:\ ,fold:\ ,diff:\

set statusline=
set statusline +=\ \ ↳\ \ %<%t%* " full path
set statusline +=%m%*     " modified flag
set statusline +=\ %{StatuslineTrailingSpaceWarning()}%*
set statusline +=%=%*     " separator
set statusline +=%3v\ %*  " virtual column number
set statusline +=%#search#%{fugitive#head()}%*
set statusline +=\ %y%*   " file type

autocmd InsertLeave,BufWritePost * unlet! b:statusline_trailing_space_warning

function! StatuslineTrailingSpaceWarning()
  if !exists("b:statusline_trailing_space_warning")
    if search('\s\+$', 'nw') != 0
      let b:statusline_trailing_space_warning = '😡 '
    else
      let b:statusline_trailing_space_warning = ''
    endif
  endif
  return b:statusline_trailing_space_warning
endfunction

set wildmenu
set wildignorecase
set wildmode=list:full
set wildignore+=.hg,.git,.svn,rel
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest
set wildignore+=*.spl
set wildignore+=*.DS_Store
set wildignore+=*.luac
set wildignore+=migrations
set wildignore+=*.pyc
set wildignore+=*.beam
set wildignore+=_build
set wildignore+=deps

set colorcolumn=80

nnoremap H gT
nnoremap L gt

nnoremap 0 ^
nnoremap ^ 0

cnoremap <C-a> <home>
cnoremap <C-e> <end>
cnoremap <C-f> <right>
cnoremap <C-b> <left>

nnoremap # #<C-o>

nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-l> <C-w>l

nnoremap <leader>bd :bdelete<CR>
nnoremap <leader>bD :call delete(expand('%'))<CR>:bdelete!<CR>

nnoremap <silent> <C-w>\| <C-W>v
nnoremap <silent> <C-w>- <C-W>s

nnoremap <leader>r :%s/\<<C-r><C-w>\>/

nnoremap <silent> <leader>fs :update<CR>

nnoremap <Backspace> <C-^>

nnoremap <silent> // :nohlsearch<CR>

nnoremap <leader>fed :e $MYVIMRC<CR>
nnoremap <leader>feR :source %<CR>

nnoremap <leader>qa :qa<CR>
nnoremap <leader>qA :qa!<CR>

nnoremap ? :echo
      \ "hi<" . synIDattr(synID(line("."),col("."),1),"name")
      \ . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name")
      \ . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name")
      \ . ">"<CR>

nnoremap <leader>? :echo expand("%")<CR>


nnoremap gcd :cd %:p:h<CR>:pwd<CR>

function! Preserve(command)
  let _s=@/
  let l = line(".")
  let c = col(".")
  execute a:command
  let @/=_s
  call cursor(l, c)
endfunction

nmap <leader>i :call Preserve("normal gg=G")<CR>
nmap <leader>C :call Preserve("%s/\\s\\+$//e")<CR>

set backup
set backupdir=$TMP
set history=5000
set noswapfile
set undodir=$TMP
set undofile
set undolevels=5000

set laststatus=2

set list
set listchars=
set lcs+=tab:▸\
set lcs+=trail:▫
set lcs+=extends:›
set lcs+=precedes:‹
set lcs+=nbsp:·
set lcs+=eol:¬

set showbreak=↪\

nnoremap <leader>o <C-o>
nnoremap <leader>i <C-i>

nnoremap <leader>gs :Gstatus<CR>

nnoremap <leader>gr :!git rebase -i --autosquash HEAD~
nnoremap <leader>gfx :Gcommit %<CR>ifixup!<space>
nnoremap <leader>gd :Gdiff<CR>

augroup defaults
  autocmd!
  autocmd VimResized * :wincmd =

  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
augroup END

augroup spell
  autocmd!
  autocmd FileType gitcommit setlocal spell
  autocmd FileType markdown setlocal spell
augroup END

augroup git
  autocmd!
  autocmd BufReadPost fugitive://* set bufhidden=delete
  autocmd BufReadPost fugitive://*
        \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
        \   nnoremap <buffer> .. :edit %:h<CR> |
        \ endif
  autocmd FileType gitrebase nnoremap <buffer> <leader>r ^cwreword<ESC>
  autocmd FileType gitrebase nnoremap <buffer> <leader>s ^cwsquash<ESC>
  autocmd FileType gitrebase nnoremap <buffer> <leader>f ^cwfixup<ESC>
augroup END

set mouse=a

au FocusLost * :silent! wall

imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

nnoremap <leader>pf :FZF<CR>
nnoremap <leader>pb :Buffers<CR>
nnoremap <leader>pt :Tags<CR>
nnoremap <leader>bc :BCommits<CR>

nnoremap <leader>grd :terminal git rebase -i develop<CR>
nnoremap <leader>grm :terminal git rebase -i master<CR>
nnoremap <leader>M :MagitOnly<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)a

nnoremap <C-P> @:

set diffopt+=foldcolumn:0

vnoremap @ :norm@

augroup cline
  au!
  au WinLeave,InsertEnter * set nocursorline
  au WinEnter,InsertLeave * set cursorline
augroup END

nmap n nzz
nmap N Nzz

set showcmd
