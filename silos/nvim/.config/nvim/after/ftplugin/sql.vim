map <leader>e <Plug>(DBUI_ExecuteQuery)
vmap e <Plug>(DBUI_ExecuteQuery)
nmap <leader>e <Plug>(DBUI_ExecuteQuery)
map gd <Plug>(DBUI_JumpToForeignKey)

autocmd FileType sql,mysql,plsql lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })
