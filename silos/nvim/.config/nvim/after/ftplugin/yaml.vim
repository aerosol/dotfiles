" Language: Yaml
" Author: Ian Young
" Get it bundled for pathogen: https://github.com/avakhov/vim-yaml

if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal autoindent sw=4 et
setlocal indentexpr=GetYamlIndent()
setlocal indentkeys=o,O,*<Return>,!^F

function! GetYamlIndent()
  let lnum = v:lnum - 1
  if lnum == 0
    return 0
  endif
  let line = substitute(getline(lnum),'\s\+$','','')
  let indent = indent(lnum)
  let increase = indent + &sw
  if line =~ ':$'
    return increase
  else
    return indent
  endif
endfunction

" vim:set sw=4:
