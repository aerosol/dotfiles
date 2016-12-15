autocmd FileType eelixir setlocal textwidth=0
autocmd FileType eelixir setlocal wrapmargin=0

"function! neomake#makers#ft#elixir#credo() abort
    "let root = s:find_git_root()
    "return {
      "\ 'exe': 'mix',
      "\ 'args': ['credo', 'list', '--format=oneline'],
      "\ 'errorformat': '[%t] %. %f:%l:%c %m',
      "\ 'append_file': 0,
      "\ 'cwd': root
      "\ }
"endfunction

"function! s:find_git_root()
  "return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
"endfunction

let g:neomake_elixir_enabled_makers = ['mix']
let g:neomake_open_list = 2
let g:neomake_list_height = 4
let g:neomake_verbose = 2
let g:neomake_highlight_lines = 1
"let g:neomake_serialize = 1
"let g:neomake_serialize_abort_on_error = 1
"let g:neomake_verbose = 3


autocmd BufWritePost *.ex Neomake
autocmd BufWritePost *.exs Neomake

let test#strategy = 'tslime'
nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>tt :TestNearest<CR>
nnoremap <leader>tl :TestLast<CR>
nnoremap <leader>tv :TestVisit<CR>
