nnoremap K :call AnsibleDoc(expand("<cword>"))<CR>

function! AnsibleDoc(word)
  new | execute 'r !ansible-doc '.a:word
  norm gg3j
  execute 'nnoremap <buffer> q :bd!<cr>'
  setlocal buftype=nofile
  setlocal bufhidden=hide
  setlocal noswapfile
  setlocal nobuflisted
endfunction
