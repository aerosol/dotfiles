autocmd FileType clojure setlocal shiftwidth=2
autocmd FileType clojure nnoremap <C-c><C-r> :Require<CR>
autocmd FileType clojure nnoremap <C-c><C-e> :Eval<CR>
autocmd FileType clojure nnoremap <C-c><C-p> :Eval!<CR>

let g:wildfire_objects = ["i'", "a'", 'i"', 'a"', "i)", "a)", "i]", "a]", "i}", "ip", "it"]

function! ClojureContext()
  let curline = getline('.')
  let cnum = col('.')
  let synname = synIDattr(synID(line('.'), cnum - 1, 1), 'name')
  if curline =~ '(\S\+\%' . cnum . 'c' && synname !~ '\(String\|Comment\)'
    return "\<c-x>\<c-o>"
  endif
endfunction

autocmd FileType clojure let b:SuperTabCompletionContexts = ['ClojureContext']
