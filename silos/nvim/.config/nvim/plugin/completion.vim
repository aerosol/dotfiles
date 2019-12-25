inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)
autocmd CursorHold * silent call CocActionAsync('highlight')
nmap g? <Plug>(coc-diagnostic-info) 
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
