let mapleader=" "

inoremap jk <Esc>

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

nnoremap # *``

cnoremap <C-a> <home>
cnoremap <C-e> <end>
cnoremap <C-f> <right>
cnoremap <C-b> <left>

nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-l> <C-w>l

nnoremap <silent> <C-w>\| <C-W>v
nnoremap <silent> <C-w>- <C-W>s

nnoremap <silent> <leader>fs :update<CR>
nnoremap <silent> ss :update<CR>
nnoremap <silent> <leader>wa :wa<CR>

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

vnoremap @ :norm@

nmap n nzz
nmap N Nzz

nmap <leader>hi :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>


nnoremap Q :qa<CR>

nnoremap go :Files<cr>

nnoremap gh :History<cr>

nnoremap <leader>l :Rg!<CR>
vnoremap <leader>l y:Rg <C-R>=trim(escape(@",'/\'))<CR><CR>
nnoremap gl :Rg <C-R><C-W><CR>
nnoremap <leader><leader> :Buffers<CR>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

nnoremap gs :Magit<CR>

nmap <leader>C :call Preserve("%s/\\s\\+$//e")<CR>
nmap <leader>z :call WinZoomToggle()<cr>

nmap - :Fern %:p:h -reveal=%:p<cr>

function! s:init_fern() abort
  nmap <buffer> <silent> <C-h> <C-w>h
  nmap <buffer> <silent> <C-j> <C-w>j
  nmap <buffer> <silent> <C-k> <C-w>k
  nmap <buffer> <silent> <C-l> <C-w>l
  nmap <buffer> <silent> <tab> <Plug>(fern-action-mark)j
  nmap <buffer> <silent> - <Plug>(fern-action-leave)
  nmap <buffer> <silent> + <Plug>(fern-action-new-path)
  setlocal cursorline
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END
