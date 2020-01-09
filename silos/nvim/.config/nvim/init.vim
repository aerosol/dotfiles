call plug#begin('~/.config/nvim/bundle/')
Plug 'liuchengxu/space-vim-dark'
Plug 'sickill/vim-monokai'
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
Plug 'mattn/gist-vim'
Plug 'mattn/vim-sqlfmt'
Plug 'mattn/webapi-vim'
Plug 'mhinz/vim-signify'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
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
Plug 'yuttie/comfortable-motion.vim'
Plug 'zhaocai/GoldenView.Vim'

Plug 'danishprakash/vim-yami'
call plug#end()

set termguicolors
set background=dark
colorscheme space-vim-dark

hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
hi Comment guifg=#5C6370 ctermfg=59
hi Folded guifg=#5C6370 ctermfg=59 guibg=NONE
hi NonText guibg=NONE guifg=#141414

let mapleader=" "

set clipboard+=unnamedplus
set cmdheight=2
set colorcolumn=80
set completeopt+=preview
set cpoptions+=$
set expandtab
set foldlevel=1
set foldmethod=indent
set hidden
set icm=nosplit
set matchtime=5
set nonumber
set norelativenumber
set nosol
set noswapfile
set notimeout
set scrolloff=2
set shiftwidth=2
set shortmess+=c
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
set updatetime=300
set wildmode=list,full
set wrap

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

inoremap jk <Esc>

nnoremap <leader><space> :Commands<cr>

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
nnoremap <leader>fet :e ~/.tmux.conf<CR>
nnoremap <leader>fek :e ~/.config/kitty/kitty.conf<CR>
nnoremap <leader>fep :e ~/.config/polybar/config<CR>
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

nnoremap <leader>pf :FZF<CR>
nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>pt :Tags<CR>
nnoremap <leader>bc :BCommits<CR>
nnoremap <leader>ag :Rg!<CR>
nnoremap <leader>hh :History:<CR>

nmap <leader>C :call Preserve("%s/\\s\\+$//e")<CR>
nmap <leader>z :call WinZoomToggle()<cr>

function! MyFoldText()
    let line = getline(v:foldstart)

    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart

    " expand tabs into spaces
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')

    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
    return '📁' . line . '… ' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
endfunction
set foldtext=MyFoldText()

" Creates a floating window with a most recent buffer to be used
function! CreateCenteredFloatingWindow()
    let width = float2nr(&columns * 0.6)
    let height = float2nr(&lines * 0.8)
    let top = ((&lines - height) / 2) - 1
    let left = (&columns - width) / 2
    let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

    let top = "╭" . repeat("─", width - 2) . "╮"
    let mid = "│" . repeat(" ", width - 2) . "│"
    let bot = "╰" . repeat("─", width - 2) . "╯"
    let lines = [top] + repeat([mid], height - 2) + [bot]
    let s:buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
    call nvim_open_win(s:buf, v:true, opts)
    set winhl=Normal:Floating
    let opts.row += 1
    let opts.height -= 2
    let opts.col += 2
    let opts.width -= 4
    call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    autocmd BufWipeout <buffer> call CleanupBuffer(s:buf)
    tnoremap <buffer> <silent> <Esc> <C-\><C-n><CR>:call DeleteUnlistedBuffers()<CR>
endfunction


function! CleanupBuffer(buf)
    if bufexists(a:buf)
        silent execute 'bwipeout! '.a:buf
    endif
endfunction

function! DeleteUnlistedBuffers()
    for n in nvim_list_bufs()
        if ! buflisted(n)
            let name = bufname(n)
            if name == '[Scratch]' ||
              \ matchend(name, ":fzf") ||
              \ matchend(name, ":hstarti")
                call CleanupBuffer(n)
            endif
        endif
    endfor
endfunction
