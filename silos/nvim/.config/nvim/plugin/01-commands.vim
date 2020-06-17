    command! -bang -nargs=* Rg
                \ call fzf#vim#grep(
                \ "rg --smart-case --column --line-number --no-heading --color=never --smart-case -- ".shellescape(<q-args>), 1, 
                \ fzf#vim#with_preview({ 'options': ['--color', 'hl:#ff8787,hl+:#ff0000'] }), <bang>0)

    command! Fold setl foldmethod=syntax foldlevel=2
    command! StopFold setl nofoldenable

