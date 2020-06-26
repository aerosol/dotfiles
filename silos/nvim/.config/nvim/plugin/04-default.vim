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
augroup END

augroup spell
  autocmd!
  autocmd FileType gitcommit setlocal spell
  autocmd FileType magit setlocal spell
augroup END

au BufEnter ?* call PreviewHeightWorkAround()
func PreviewHeightWorkAround()
    if &previewwindow
        exec 'setlocal winheight='.&previewheight
    endif
endfunc

