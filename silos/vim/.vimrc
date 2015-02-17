let $VIM        = expand('~/.vim/')
let $TMP        = expand($VIM . 'tmp/')
let $BUNDLES    = expand($VIM . 'bundle/')
let $DROPBOX    = expand('~/Dropbox/')
let $NOTES      = expand($DROPBOX . 'Notes')

let g:author = 'Adam Rutkowski <hq@mtod.org>'

if !isdirectory($TMP)
    call mkdir($TMP, "p")
endif

call plug#begin($BUNDLES)
"Plug 'vim-scripts/paredit.vim', {'for': 'clojure'}
Plug 'MattesGroeger/vim-bookmarks'
Plug 'Shougo/junkfile.vim'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc', {'do': 'make -f make_mac.mak'}
Plug 'airblade/vim-rooter'
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'guns/vim-sexp', {'for': 'clojure'}
Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'kmnk/vim-unite-giti'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'mhinz/vim-signify'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'sjl/tslime.vim'
Plug 'thinca/vim-ft-clojure', {'for': 'clojure'}
Plug 'thinca/vim-qfreplace'
Plug 'thinca/vim-ref', {'for': 'erlang'}
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-classpath', {'for': 'clojure'}
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fireplace', {'for': 'clojure'}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat', {'for': 'clojure'}
Plug 'tpope/vim-sexp-mappings-for-regular-people', {'for': 'clojure'}
Plug 'tpope/vim-surround', {'for': 'clojure'}
Plug 'vim-erlang/erlang-motions.vim', {'for': 'erlang'}
Plug 'vim-erlang/vim-erlang-compiler', {'for': 'erlang'}
Plug 'vim-erlang/vim-erlang-omnicomplete', {'for': 'erlang'}
Plug 'vim-erlang/vim-erlang-runtime', {'for': 'erlang'}
Plug 'vim-erlang/vim-erlang-tags', {'for': 'erlang'}
Plug 'gcmt/wildfire.vim'
"Plug 'venantius/vim-eastwood', {'for': 'clojure'}
Plug 'whatyouhide/vim-gotham'

call plug#end()

set background=dark
colorscheme mac_classic

let mapleader=","
set shell=/bin/zsh

syntax on
syntax sync minlines=256
filetype plugin indent on
filetype on

inoremap jk <Esc>

vmap > >gv
vmap < <gv
nnore> >>
nnore< <<

nnoremap j gj
nnoremap k gk

nnoremap <space> :
vnoremap <space> :

set cryptmethod=blowfish
set relativenumber

set backspace=indent,eol,start

set ignorecase
set smartcase
set gdefault

set splitright

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=8

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

set fillchars=vert:\ ,fold:\ ,diff:\ ,

set wildmenu
set wildmode=longest:list,full
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

set cm=blowfish

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

nnoremap <leader>x :bdelete<CR>
nnoremap <leader>X :call delete(expand('%'))<CR>:bdelete!<CR>

nnoremap <silent> <leader>v <C-W>v
nnoremap <silent> <leader>s <C-W>s

nnoremap <Leader>r :%s/\<<C-r><C-w>\>/

nnoremap <silent> <leader>w :update<CR>

nnoremap <Backspace> <C-^>

nnoremap <silent> <Leader>/ :nohlsearch<CR>

nnoremap <leader>Ve :e $MYVIMRC<CR>
nnoremap <leader>. :source %<CR>

nnoremap ? :echo
            \ "hi<" . synIDattr(synID(line("."),col("."),1),"name")
            \ . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name")
            \ . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name")
            \ . ">"<CR>

nnoremap <leader>? :echo expand("%")<CR>

set pastetoggle=<F3>

nmap <leader>e :FileBeagle<CR>
let g:filebeagle_show_hidden=1
nnoremap gcd :cd %:p:h<CR>:pwd<CR>
let g:netrw_http_cmd='curl -0 -k -L -vv'
let g:netrw_http_xcmd='-o'
let g:netrw_liststyle=3

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
silent! execute '!find '. $TMP .' -type f -mtime +60 -exec rm {} \;'
silent! execute '!mkdir '. $TMP .'> /dev/null 2>&1'

function! ShortCwd()
    return substitute(getcwd(), $HOME, "~", "")
endfunction

set laststatus=2
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_y = '%{ShortCwd()}'
let g:airline_theme='raven'

set list
set listchars=
set lcs+=tab:>-
set lcs+=extends:›
set lcs+=precedes:‹
set lcs+=nbsp:·
set lcs+=trail:·

set sua+=.erl
set sua+=.hrl
let erlp=substitute(system("command -v erl"), "/bin/erl", "/lib/**/src/", "")
exe ":set path+="."src/,deps/**/src/,apps/**/src/,**/include/," . erlp

function! GoToFile()
    call inputsave()
    let f = input('File/Module: ')
    call inputrestore()
    exec "find " . f
endfunction

noremap <C-g> :call GoToFile()<CR>

let g:unite_enable_start_insert = 1
let g:unite_winheight = 10
let g:unite_split_rule = 'botright'
let g:unite_source_history_yank_enable = 1

function! s:unite_settings()
    imap <buffer> jj <Plug>(unite_insert_leave)
    imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
    imap <buffer> <leader> <Esc><leader>
    nnoremap <buffer> <C-j> <C-w>j
    nnoremap <buffer> <C-k> <C-w>k
    imap <buffer> <C-j> <Esc><C-w>j
    imap <buffer> <C-k> <Esc><C-w>k
endfunction

let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts =
            \ '--line-numbers --nocolor --nogroup --hidden'
let g:unite_source_grep_recursive_opt = ''
nnoremap <leader>b :<C-u>Unite buffer file_mru file/new file -no-split<CR>
nnoremap <leader>a :<C-u>Unite grep -default-action=persist_open
            \ -no-start-insert -no-empty -truncate -auto-resize<CR>
nnoremap <leader>A :<C-u>execute
            \ 'Unite grep:.::' . expand("<cword>") . '
            \ -default-action=above -auto-preview'<CR>
nnoremap <leader>p :<C-u>:Unite history/yank<CR>
nnoremap <leader>u :<C-u>Unite<Space>
nnoremap <leader>n normal ":Unite"

call unite#custom#source('buffer', 'filters',
            \ ['converter_relative_word', 'matcher_fuzzy',
            \  'sorter_default', 'converter_relative_abbr'])

call unite#custom#profile('default', 'context', {
\   'prompt_direction': 'top'
\ })

let g:ref_use_vimproc = 1
let g:ref_open = 'split'
let g:ref_cache_dir = expand($TMP . '/vim_ref_cache/')
nno <leader>K :<C-u>Unite ref/erlang
            \ -vertical -default-action=split<CR>
let g:neosnippet#snippets_directory = expand($VIM . 'snippets')
let g:neosnippet#disable_runtime_snippets = {
            \   'erlang' : 1
            \ }
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

nnoremap <leader>gs :Gstatus<CR>

let g:erlang_tags_ignore = '_rel'

nnoremap <leader>gr :!git rebase -i --autosquash HEAD~
nnoremap <leader>gfx :Gcommit %<CR>ifixup!<space>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gl :Unite giti/log -default-action=diff<CR>
nnoremap <leader>gb :Unite giti/branch_all<CR>

let g:gist_post_private = 1
let g:gist_detect_filetype = 1
let g:gist_clip_command = 'pbcopy'
let g:gist_open_browser_after_post = 1

let g:signify_skip_filetype = { 'vim': 1, 'diff': 1 }
let g:signify_mapping_next_hunk = ']c'
let g:signify_mapping_prev_hunk = '[c'
let g:signify_update_on_focusgained = 1
let g:signify_line_highlight = 0

augroup defaults
    autocmd!
    autocmd VimResized * :wincmd =

    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal g`\"" |
                \ endif
augroup END

augroup make
    autocmd!
    autocmd FileType make set modelines=0
augroup END

augroup unite
    autocmd!
    autocmd FileType unite call s:unite_settings()
augroup END

augroup projects
    autocmd!
    autocmd BufNewFile,BufRead *.app.src,rebar.config,sys.config setl filetype=erlang
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
    autocmd FileType gitcommit nmap <buffer> j <C-n>
    autocmd FileType gitcommit nmap <buffer> k <C-p>
augroup END

augroup clj
    autocmd!
    autocmd FileType clojure setlocal shiftwidth=2
    autocmd FileType clojure nnoremap <C-c><C-r> :Require!<CR>
    autocmd FileType clojure nnoremap <C-c><C-e> :Eval<CR>
    autocmd FileType clojure nnoremap <C-c><C-p> :Eval!<CR>

    function! ClojureContext()
        let curline = getline('.')
        let cnum = col('.')
        let synname = synIDattr(synID(line('.'), cnum - 1, 1), 'name')
        if curline =~ '(\S\+\%' . cnum . 'c' && synname !~ '\(String\|Comment\)'
            return "\<c-x>\<c-o>"
        endif
    endfunction

    autocmd FileType clojure let b:SuperTabCompletionContexts = ['ClojureContext']
augroup END

augroup autoroot
    autocmd!
    autocmd BufEnter *.py,*.erl,*.hrl,*.js,*.json,*.clj :Rooter
augroup END

nnoremap <silent><Leader>S :SyntasticToggleMode<CR>
let g:syntastic_auto_loc_list = 1
let g:syntastic_python_checkers=['pep8', 'pyflakes', 'python']
let g:syntastic_erlang_checkers=['']

let g:tslime_ensure_trailing_newlines=2
set mouse=a

let g:SuperTabDefaultCompletionType = "context"

set nocursorline
set ttyfast
