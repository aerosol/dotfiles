augroup defaults
  autocmd!

  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif

  autocmd InsertLeave,BufWritePost * unlet! b:statusline_trailing_space_warning
  autocmd InsertLeave,WinEnter,WinLeave * set nocursorline
  autocmd InsertEnter * set cursorline

  au InsertLeave * hi StatusLine gui=underline guifg=#000000 guibg=#aeeeee
  au InsertEnter * hi StatusLine gui=underline guifg=#ffffff guibg=red

  au VimResized * wincmd =
augroup END

augroup spell
  autocmd!
  autocmd FileType gitcommit setlocal spell
augroup END

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
