let $VIM        = expand('~/.config/nvim/')
let $BUNDLES    = expand($VIM . 'bundle/')

call plug#begin($BUNDLES)
Plug 'ajgrf/parchment'
Plug 'airblade/vim-rooter'
Plug 'editorconfig/editorconfig-vim'
Plug 'elixir-lang/vim-elixir', {'for': ['eelixir', 'elixir']}
Plug 'gcmt/wildfire.vim'
Plug 'janko-m/vim-test'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'mhinz/vim-signify'
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'scrooloose/nerdcommenter'
Plug 'sjl/tslime.vim'
Plug 'slashmili/alchemist.vim', {'for': 'elixir'}
Plug 'thinca/vim-qfreplace'
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

Plug 'mattn/vim-sqlfmt'

Plug 'fsharp/vim-fsharp', {'for': 'fsharp', 'do':  'make fsautocomplete'}
Plug 'vim-syntastic/syntastic', { 'for': 'fsharp' }

Plug 'w0rp/ale', {'for': ['rust']}
Plug 'rust-lang/rust.vim/', {'for': ['rust']}

call plug#end()

let g:erlang_tags_ignore = '_build'
let g:filebeagle_show_hidden=1
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
let g:gist_post_private = 1
let g:goldenview__enable_default_mapping = 0
let g:signify_line_highlight = 0
let g:signify_mapping_next_hunk = ']c'
let g:signify_mapping_prev_hunk = '[c'
let g:signify_skip_filetype = { 'diff': 1 }
let g:signify_update_on_focusgained = 1
let g:tslime_ensure_trailing_newlines = 2
let g:vim_markdown_folding_disabled = 1
let g:rooter_patterns = ['.git/']
let g:fzf_buffers_jump = 1

let mapleader=" "
nnoremap <leader><space> :Commands<CR>

set background=dark
set termguicolors
colorscheme dumbo

inoremap jk <Esc>
set clipboard+=unnamedplus

vmap > >gv
vmap < <gv
nnore> >>
nnore< <<

nnoremap j gj
nnoremap k gk

nnoremap H gT
nnoremap L gt

nnoremap 0 ^
nnoremap ^ 0

nnoremap # #<C-o>

cnoremap <C-a> <home>
cnoremap <C-e> <end>
cnoremap <C-f> <right>
cnoremap <C-b> <left>

nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <Backspace> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-l> <C-w>l

nnoremap <silent> <C-w>\| <C-W>v
nnoremap <silent> <C-w>- <C-W>s

nnoremap <silent> <leader>fs :update<CR>

nnoremap <silent> // :nohlsearch<CR>

nnoremap <leader>fed :e $MYVIMRC<CR>
nnoremap <leader>fep :e ~/.config/polybar/config<CR>
nnoremap <leader>fei :e ~/.config/i3/config<CR>
nnoremap <leader>fez :e ~/.zshrc<CR>
nnoremap <leader>feR :source %<CR>

nnoremap <leader>? :echo expand("%:p")<CR>

nnoremap <C-P> @:

vnoremap @ :norm@

nmap n nzz
nmap N Nzz

nmap <leader>hi :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

nnoremap <leader>gs :Gstatus<CR>

imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

nnoremap <leader>pf :FZF<CR>
nnoremap <leader>pb :Buffers<CR>
nnoremap <leader>pt :Tags<CR>
nnoremap <leader>bc :BCommits<CR>
nnoremap <leader>ag :Rg!<CR>
nnoremap <leader>ch :History:<CR>

nmap <leader>C :call Preserve("%s/\\s\\+$//e")<CR>

set cmdheight=2
set colorcolumn=80
set cpoptions+=$
set expandtab
set hidden
set icm=nosplit
set matchtime=5
set nosol
set noswapfile
set notimeout
set nowrap
set number
set relativenumber
set scrolloff=2
set shiftwidth=2
set showbreak=↪\
set showmatch
set sidescrolloff=3
set softtabstop=2
set splitright
set tabstop=4
set textwidth=79
set ttimeout
set ttimeoutlen=10
set undofile
set undolevels=5000

set statusline=
set statusline +=\ %<%t%*
set statusline +=\ @%P%*   " percentage
set statusline +=\ %#error#%m%*     " modified flag
set statusline +=\ %{StatuslineTrailingSpaceWarning()}%*
set statusline +=%=%*     " separator
set statusline +=%{fugitive#head()}%*
set statusline +=\ %y%*   " file type

set list
set listchars=
set lcs+=tab:▸\ 
set lcs+=trail:▫
set lcs+=extends:›
set lcs+=precedes:‹
set lcs+=nbsp:·
set lcs+=eol:¬

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
  autocmd FileType gitrebase nnoremap <buffer> <leader>r ^cwreword<ESC>
  autocmd FileType gitrebase nnoremap <buffer> <leader>s ^cwsquash<ESC>
  autocmd FileType gitrebase nnoremap <buffer> <leader>f ^cwfixup<ESC>
augroup END

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=auto '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

function! Preserve(command)
  let _s=@/
  let l = line(".")
  let c = col(".")
  execute a:command
  let @/=_s
  call cursor(l, c)
endfunction

autocmd InsertLeave,BufWritePost * unlet! b:statusline_trailing_space_warning

function! StatuslineTrailingSpaceWarning()
  if !exists("b:statusline_trailing_space_warning")
    if search('\s\+$', 'nw') != 0
      let b:statusline_trailing_space_warning = '👽'
    else
      let b:statusline_trailing_space_warning = ''
    endif
  endif
  return b:statusline_trailing_space_warning
endfunction
