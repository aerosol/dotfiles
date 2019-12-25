augroup defaults
  autocmd!

  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif

  autocmd InsertLeave,BufWritePost * unlet! b:statusline_trailing_space_warning
augroup END

