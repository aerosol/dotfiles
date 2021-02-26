command! -bang -nargs=* Rg
      \ call fzf#vim#grep('rg --smart-case --column --line-number --no-heading -- '.shellescape(<q-args>),
      \ 1, fzf#vim#with_preview({'options': '--prompt "'.string(<q-args>).' "'}, 'down:40%'))

command! Fold setl foldmethod=syntax foldlevel=2
command! Unfold setl nofoldenable

