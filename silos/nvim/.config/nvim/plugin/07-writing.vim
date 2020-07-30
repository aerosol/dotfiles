function! Light() 
  set background=light
  colorscheme dumbo_light
endfunction

function! Dark()
  set background=dark
  colorscheme dumbo
endfunction

function! ProseOn()
  call Light()
  DittoOn
  " force top correction on most recent misspelling
  nnoremap <buffer> <c-s> [s1z=<c-o>
  inoremap <buffer> <c-s> <c-g>u<Esc>[s1z=`]A<c-g>u
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
endfunction

function! ProseOff()
  set showmode
  set showcmd
  set scrolloff=2
  call Dark()
  DittoOff
  Limelight!
endfunction

augroup prose
  autocmd!
  autocmd! User GoyoEnter nested call ProseOn()
  autocmd! User GoyoLeave nested call ProseOff()
augroup END
