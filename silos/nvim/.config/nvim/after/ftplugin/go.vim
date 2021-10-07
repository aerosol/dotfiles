augroup go_dev
  au FileType go set noexpandtab
  au FileType go set shiftwidth=4
  au FileType go set softtabstop=4
  au FileType go set tabstop=4
  au BufWritePre <buffer> noautocmd silent update | :GoFmt
augroup END
