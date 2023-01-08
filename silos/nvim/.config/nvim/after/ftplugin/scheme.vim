let b:is_chicken=1

setl makeprg=chicken-csc\ %

setl complete+=,k~/.local/share/scheme/words

setl include=\^\(\\(use\\\|require-extension\\)\\s\\+
setl includeexpr=substitute(v:fname,'$','.scm','')
setl path+=~/.cache/chicken-install
setl suffixesadd=.scm

setl lispwords+=let-values,condition-case,with-input-from-string
setl lispwords+=with-output-to-string,handle-exceptions,call/cc,rec,receive
setl lispwords+=call-with-output-file

fun! Scheme_indent_top_sexp()
	let pos = getpos('.')
	silent! exec 'normal! 99[(=%'
	call setpos('.', pos)
endfun

nmap <buffer> <silent> == :call Scheme_indent_top_sexp()<cr>
nmap <buffer> gs :10 split term://chicken-csi -s %<cr>:startinsert<cr>

setlocal keywordprg=chicken-doc\ scheme
