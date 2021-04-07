augroup elixir_dev
  autocmd FileType eelixir setlocal textwidth=1
  autocmd FileType eelixir setlocal wrapmargin=0
augroup END

let test#strategy = 'dispatch'
nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>tt :TestNearest<CR>
nnoremap <leader>tl :TestLast<CR>
nnoremap <leader>tv :TestVisit<CR>

nnoremap tf :TestFile<CR>
nnoremap tt :TestNearest<CR>
nnoremap tl :TestLast<CR>
nnoremap tv :TestVisit<CR>

 "xoxo Wojtek Mach
function! ElixirUmbrellaTransform(cmd) abort
  if match(a:cmd, 'apps/') != -1
    return '(' . substitute(a:cmd, 'mix test apps/\([^/]*/\)', '\cd apps/\1 \&\& mix test \2', '') . ')'
  else
    return a:cmd
  end
endfunction

let g:test#custom_transformations = {'elixir_umbrella': function('ElixirUmbrellaTransform')}
let g:test#transformation = 'elixir_umbrella'
