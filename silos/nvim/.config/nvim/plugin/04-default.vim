augroup defaults
  autocmd!

  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif

  autocmd InsertLeave,BufWritePost * unlet! b:statusline_trailing_space_warning
  autocmd InsertLeave,WinEnter,WinLeave * set nocursorline
  autocmd InsertEnter * set cursorline
  autocmd InsertLeave * Beacon

  au InsertLeave * hi StatusLine gui=underline guifg=#000000 guibg=#aeeeee
  au InsertEnter * hi StatusLine gui=underline guifg=#ffffff guibg=red

  au BufEnter ?* call PreviewHeightWorkAround()
  au VimResized * wincmd =
augroup END

augroup spell
  autocmd!
  autocmd FileType gitcommit setlocal spell
  autocmd FileType magit setlocal spell
augroup END

func PreviewHeightWorkAround()
    if &previewwindow
        exec 'setlocal winheight='.&previewheight
    endif
endfunc

