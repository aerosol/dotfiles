command! -bang -nargs=* Rg
      \ call fzf#vim#grep('rg --smart-case --column --line-number --no-heading -- '.shellescape(<q-args>),
      \ 1, fzf#vim#with_preview({'options': '--prompt "'.string(<q-args>).' "'}, 'down:40%'))

command! -bang -nargs=* RgNoPaths
      \ call fzf#vim#grep('rg --smart-case --column --line-number --no-heading -- '.shellescape(<q-args>),
      \ 1, fzf#vim#with_preview({'options': '--delimiter : --nth 4.. --prompt "'.string(<q-args>).' "'}, 'down:40%'))

command! -bang -nargs=* RgAll
      \ call fzf#vim#grep('rg --no-ignore --smart-case --column --line-number --no-heading -- '.shellescape(<q-args>),
      \ 1, fzf#vim#with_preview({'options': '--delimiter : --nth 4.. --prompt "'.string(<q-args>).' "'}, 'down:40%'))

command! -bang -complete=dir -nargs=? FilesAll
    \ call fzf#run(fzf#wrap({'source': 'fd --type file --no-ignore --hidden', 'dir': <q-args>}, <bang>0))

command! Fold setl foldmethod=syntax foldlevel=2
command! Unfold setl nofoldenable
