autocmd BufWritePost *.rkt Neomake!
autocmd FileType racket nnoremap <C-c><C-l> :call SendToTmux('(enter! "'. expand('%:t') .'")')<CR>
autocmd FileType racket RainbowParenthesesToggle
autocmd FileType racket RainbowParenthesesLoadRound
autocmd FileType racket RainbowParenthesesLoadSquare
nmap <leader>pp m[vab:sleep 350m<CR>`[
imap <leader>pp <Esc>m[vab:sleep 350m<CR>`[a
