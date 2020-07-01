let mapleader=" "

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

nnoremap # *``

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
nnoremap <leader>ag :Rg!<CR>
nnoremap <leader>hh :History:<CR>

nmap <leader>C :call Preserve("%s/\\s\\+$//e")<CR>
nmap <leader>z :call WinZoomToggle()<cr>
