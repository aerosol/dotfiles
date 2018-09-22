augroup html
  autocmd!
  autocmd FileType html setlocal textwidth=0
  autocmd FileType html setlocal wrapmargin=0
  autocmd BufWritePre *.html :call Preserve("normal gg=G")
  autocmd BufWritePre *.eex :call Preserve("normal gg=G")
augroup END

