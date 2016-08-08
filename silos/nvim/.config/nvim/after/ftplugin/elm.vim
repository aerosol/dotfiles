au FileType elm nmap <leader>em <Plug>(elm-make)
au FileType elm nmap <leader>eM <Plug>(elm-make-main)
au FileType elm nmap <leader>et <Plug>(elm-test)
au FileType elm nmap <leader>er <Plug>(elm-repl)
au FileType elm nmap <leader>ee <Plug>(elm-error-detail)
au FileType elm nmap <leader>ed <Plug>(elm-show-docs)
au FileType elm nmap <leader>ebd <Plug>(elm-browse-docs)
let g:elm_jump_to_error = 1
let g:elm_make_output_file = "elm.js"
let g:elm_make_show_warnings = 0
let g:elm_browser_command = ""
let g:elm_detailed_complete = 0
