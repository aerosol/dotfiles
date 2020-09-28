imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)

" there's a conflict between endwise and this cr-to-complete hack
let g:endwise_no_mappings = v:true
inoremap <expr> <Plug>CustomComplete pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
imap <CR> <Plug>CustomComplete<Plug>DiscretionaryEnd

