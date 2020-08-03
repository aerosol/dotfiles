function! ProseOn()
  DittoOn
  " force top correction on most recent misspelling
  nnoremap <buffer> <c-s> [s1z=<c-o>
  inoremap <buffer> <c-s> <c-g>u<Esc>[s1z=`]A<c-g>u
  set noshowmode
  set noshowcmd
  set nolist
  set scrolloff=999
  set laststatus=0
  Limelight
endfunction

function! ProseOff()
  set showmode
  set showcmd
  set scrolloff=2
  set laststatus=2
  set list
  DittoOff
  Limelight!
endfunction

augroup prose
  autocmd!
  autocmd! User GoyoEnter nested call ProseOn()
  autocmd! User GoyoLeave nested call ProseOff()
augroup END

nmap <leader>gp :call ProseOn()<CR>
nmap <leader>gc :call ProseOff()<CR>
