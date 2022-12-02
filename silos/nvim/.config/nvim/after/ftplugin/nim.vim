nnoremap tf :TestFile<CR>
nnoremap tt :TestNearest<CR>
nnoremap tl :TestLast<CR>
nnoremap tv :TestVisit<CR>

function! NimTestPanel(cmd)
  let bnr = bufnr("TestPanel")
  if bnr > 0
     execute 'bdelete! ' . bnr
  endif
  execute 'botright 10 new'
  call termopen(a:cmd)
  execute 'file! TestPanel'
  echo 'Test: ' . a:cmd
  nmap <buffer> q :bd!<cr>
  nnoremap <buffer> o :vs<cr>gF<C-w>=
  au BufEnter <buffer> wincmd _
  au BufLeave <buffer> resize 10
  wincmd p
endfunction

let test#custom_strategies = {'custom': function('NimTestPanel')}
let test#strategy = "custom"
