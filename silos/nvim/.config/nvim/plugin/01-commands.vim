    command! -bang -nargs=* Rg
                \ call fzf#vim#grep(
                \ "rg --column --line-number --no-heading --color=never --smart-case -- ".shellescape(<q-args>), 1, 
                \ fzf#vim#with_preview({ 'options': ['--color', 'hl:#ff8787,hl+:#ff0000'] }), <bang>0)
