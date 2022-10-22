set clipboard+=unnamedplus
set cmdheight=2
set colorcolumn=80
set cpoptions+=$
set expandtab
set hidden
set icm=nosplit
set lazyredraw
set matchtime=5
set noshowmode
set nosol
set noswapfile
set notimeout
"set number
"set relativenumber
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

" Statusline
function! LspStatus() abort
  if luaeval('#vim.lsp.buf_get_clients() > 0')
    return luaeval("require('lsp-status').status()")
  endif

  return ''
endfunction

set statusline=
set statusline +=\ %{nerdfont#find()}%*\ \ %<%t%*
set statusline +=\ \ %{LspStatus()}%*
set statusline +=\ %{StatuslineTrailingSpaceWarning()}%*
set statusline +=\ %#error#%M%* " modified flag
set statusline +=%=%* " separator
set statusline +=%= " separator
set statusline +=\ \ %{FugitiveHead()}%*
set statusline +=\ %l:%c\ 

set list
set listchars=
set lcs+=tab:▸\ 
set lcs+=trail:▫
set lcs+=extends:›
set lcs+=precedes:‹
set lcs+=nbsp:·
set lcs+=eol:¬

set previewheight=15

set fillchars=vert:❘

set mouse=a

set completeopt=menu,menuone,noselect
