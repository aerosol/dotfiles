function! s:erlang_settings()
  set sua+=.erl
  set sua+=.hrl
  let erlp=substitute(system("command -v erl"), "/bin/erl", "/lib/**/src/", "")
  exe ":set path+="."src/,deps/**/src/,apps/**/src/,**/include/," . erlp
endfunction
autocmd FileType erlang call s:erlang_settings()
autocmd BufNewFile,BufRead *.app.src,rebar.config,sys.config setl filetype=erlang
