let $VIM        = expand('~/.config/nvim/')
let $BUNDLES    = expand($VIM . 'bundle/')

call plug#begin($BUNDLES)
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'aswathkk/darkscene.vim'
Plug 'mcchrish/nnn.vim'
Plug 'aerosol/dumbotron.vim'
Plug 'airblade/vim-rooter'
Plug 'alvan/vim-closetag', {'for': ['html', 'eelixir']}
Plug 'andymass/vim-matchup'
Plug 'cocopon/iceberg.vim'
Plug 'elixir-lang/vim-elixir', {'for': ['eelixir', 'elixir']}
Plug 'gcmt/wildfire.vim'
Plug 'gregsexton/MatchTag', {'for': ['html', 'eelixir']}
Plug 'janko-m/vim-test'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'jreybert/vimagit'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'mattn/gist-vim'
Plug 'mattn/vim-sqlfmt'
Plug 'mattn/webapi-vim'
Plug 'mhinz/vim-signify'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'scrooloose/nerdcommenter'
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
Plug 'yuttie/comfortable-motion.vim'
Plug 'zhaocai/GoldenView.Vim'
Plug 'vimwiki/vimwiki'
Plug 'sgur/vim-editorconfig'
call plug#end()

let g:nnn#layout = { 'left': '~20%' } " or right, up, down

let g:vimwiki_list = [{'path': '~/vimwiki/',
      \ 'css_name': 'style.css',
      \ 'auto_export': 1,
      \ 'template_path': '~/vimwiki/templates/',
      \ 'template_default': 'plain',
      \ 'template_ext': '.html'}]

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

let g:coc_snippet_next = '<c-n>'
let g:coc_snippet_prev = '<c-p>'

nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

autocmd CursorHold * silent call CocActionAsync('highlight')

nmap g? <Plug>(coc-diagnostic-info) 

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

let g:dispatch_compilers = {'mix test': 'exunit'}

set completeopt+=preview
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

let g:erlang_tags_ignore = '_build'
let g:filebeagle_show_hidden=1
let g:fzf_buffers_jump = 1
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
let g:gist_post_private = 1
let g:goldenview__enable_default_mapping = 0
let g:rooter_patterns = ['.git/']
let g:rooter_silent_chdir = 1
let g:signify_line_highlight = 0
let g:signify_skip_filetype = { 'diff': 1 }
let g:signify_update_on_focusgained = 1
let g:tslime_ensure_trailing_newlines = 2

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.eex'

let mapleader=" "
nnoremap <leader><space> :Commands<CR>

set termguicolors
set background=dark
colorscheme darkscene

inoremap jk <Esc>
set clipboard+=unnamedplus

vmap > >gv
vmap < <gv
nnore > >>
nnore < <<

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

nnoremap <silent> <Backspace> <C-^>

nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-l> <C-w>l

nnoremap <silent> <C-w>\| <C-W>v
nnoremap <silent> <C-w>- <C-W>s

nnoremap <silent> <leader>fs :update<CR>

nnoremap <silent> // :nohlsearch<CR>

nnoremap <leader>q :copen<CR>
nnoremap <leader>fed :e $MYVIMRC<CR>
nnoremap <leader>fez :e ~/.zshrc<CR>
nnoremap <leader>feb :e ~/.config/bspwm/bspwmrc<CR>
nnoremap <leader>fes :e ~/.config/sxhkd/sxhkdrc<CR>
nnoremap <leader>feR :source %<CR>

nnoremap <leader>? :echo expand("%:p")<CR>

nnoremap <C-P> @:

vnoremap @ :norm@

nmap n nzz
nmap N Nzz

nmap <leader>hi :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

nnoremap <leader>gs :Magit<CR>

imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)

nnoremap <leader>pf :FZF<CR>
nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>pt :Tags<CR>
nnoremap <leader>bc :BCommits<CR>
nnoremap <leader>ag :Rg!<CR>
nnoremap <leader>hh :History:<CR>

nmap <leader>C :call Preserve("%s/\\s\\+$//e")<CR>

function! WinZoomToggle()
  if !exists('w:WinZoomIsZoomed') 
    let w:WinZoomIsZoomed = 0
  endif
  if w:WinZoomIsZoomed == 0
    execute "tabedit %"
    let w:WinZoomIsZoomed = 1
  elseif w:WinZoomIsZoomed == 1
    execute "tabclose"
    let w:WinZoomIsZoomed = 0
  endif
endfunction

nmap <leader>z :call WinZoomToggle()<cr>

set foldmethod=syntax
set foldlevel=1
set cmdheight=2
set colorcolumn=80
set cpoptions+=$
set expandtab
set hidden
set icm=nosplit
set matchtime=5
set updatetime=300
set shortmess+=c
set nosol
set noswapfile
set notimeout
set wrap
set nonumber
set norelativenumber
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
set statusline +=\ %{StatuslineTrailingSpaceWarning()}%*
set statusline +=\ %<%t%*
set statusline +=\ %#error#%m%* " modified flag
set statusline +=%=%* " separator
set statusline +=%{fugitive#head()}%*
set statusline +=\ %y%* " file type
set statusline +=\ %4l:%2c " line no/column, padded

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

  autocmd InsertLeave,BufWritePost * unlet! b:statusline_trailing_space_warning
augroup END

augroup spell
  autocmd!
  autocmd FileType gitcommit setlocal spell
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
