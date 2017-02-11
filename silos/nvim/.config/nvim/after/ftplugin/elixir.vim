autocmd FileType eelixir setlocal textwidth=1
autocmd FileType eelixir setlocal wrapmargin=0

let g:neomake_elixir_mix_maker = {
      \ 'exe': 'mix',
      \ 'args': ['compile', '%:p', '--warnings-as-errors'],
      \ 'errorformat':
      \ '** %s %f:%l: %m,' .
      \ '%Ewarning: %m,%C  %f:%l,%Z',
      \ 'remove_invalid_entries': 1
      \ }

let g:neomake_elixir_enabled_makers = ['mix']
let g:neomake_open_list = 0
let g:neomake_list_height = 4
let g:neomake_verbose = 3
let g:neomake_highlight_lines = 1
let g:neomake_serialize = 1
let g:neomake_serialize_abort_on_error = 1

autocmd BufWritePost *.ex Neomake
autocmd BufWritePost *.exs Neomake

let test#strategy = 'tslime'
nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>tt :TestNearest<CR>
nnoremap <leader>tl :TestLast<CR>
nnoremap <leader>tv :TestVisit<CR>
