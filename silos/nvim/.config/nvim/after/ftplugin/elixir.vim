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
let g:neomake_list_height = 0
let g:neomake_highlight_lines = 1

augroup ElixirMake
  autocmd BufWritePost *.ex Neomake
  autocmd BufWritePost *.exs Neomake
augroup END

let test#strategy = 'tslime'
nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>tt :TestNearest<CR>
nnoremap <leader>tl :TestLast<CR>
nnoremap <leader>tv :TestVisit<CR>

" xoxo Wojtek Mach
function! ElixirUmbrellaTransform(cmd) abort
  if match(a:cmd, 'apps/') != -1
    return substitute(a:cmd, 'mix test apps/\([^/]*/\)', 'cd apps/\1 \&\& mix test ', '')
  else
    return a:cmd
  end
endfunction

let g:test#custom_transformations = {'elixir_umbrella': function('ElixirUmbrellaTransform')}
let g:test#transformation = 'elixir_umbrella'
