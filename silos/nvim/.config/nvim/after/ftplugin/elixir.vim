augroup elixir_dev
  autocmd FileType eelixir setlocal textwidth=1
  autocmd FileType eelixir setlocal wrapmargin=0
augroup END

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

function! ExUnitPanel(cmd)
  let bnr = bufnr("ExUnit")
  if bnr > 0
     execute 'bdelete! ' . bnr
  endif
  execute 'botright 10 new'
  call termopen(a:cmd)
  execute 'file! ExUnit'
  echo 'ExUnit: ' . a:cmd
  nmap <buffer> q :bd!<cr>
  nnoremap <buffer> o :vs<cr>gF<C-w>=
  au BufEnter <buffer> wincmd _
  au BufLeave <buffer> resize 10
  wincmd p
endfunction

let test#custom_strategies = {'custom': function('ExUnitPanel')}
let test#strategy = "custom"
