
    command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \   'rg --hidden --line-number --no-heading --color=always --colors "match:fg:195,232,141" --colors "path:fg:190,220,255" --colors "line:fg:128,128,128" --smart-case -- '.shellescape(<q-args>), 1,
      \   fzf#vim#with_preview({ 'options': ['--color', 'hl:#ff8787,hl+:#ff0000'] }), <bang>0)
