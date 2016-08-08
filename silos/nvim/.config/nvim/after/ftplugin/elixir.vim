  let g:UltiSnipsJumpForwardTrigger='<tab>'
  autocmd FileType elixir setlocal tags+=/Users/hq1/dev/elixir/tags

  autocmd FileType eelixir setlocal textwidth=0
  autocmd FileType eelixir setlocal wrapmargin=0

  let g:neomake_serialize = 1
  let g:neomake_serialize_abort_on_error = 1

  let g:neomake_elixir_mix_maker = {
        \ 'exe': 'mix',
        \ 'args': ['compile', '%:p', '--warnings-as-errors'],
        \ 'errorformat':
        \ '** %s %f:%l: %m,' .
        \ '%f:%l: warning: %m'
        \ }

  let g:neomake_elixir_lint_maker = {
        \ 'exe': 'mix',
        \ 'args': ['credo', 'list', '%:p', '--one-line', '-i', 'readability'],
        \ 'errorformat': '[%t] %. %f:%l:%c %m'
        \ }

  let g:neomake_elixir_enabled_makers = ['mix']
  let g:neomake_open_list = 2
  let g:neomake_list_height = 4
  let g:neomake_serialize = 1
  let g:neomake_serialize_abort_on_error = 1
  let g:neomake_verbose = 2

  autocmd BufWritePost *.ex Neomake
  autocmd BufWritePost *.exs Neomake

  let test#strategy = 'tslime'
  nnoremap <leader>tf :TestFile<CR>
  nnoremap <leader>tt :TestNearest<CR>
  nnoremap <leader>tl :TestLast<CR>
  nnoremap <leader>tv :TestVisit<CR>
  nnoremap K :call Exdoc()<CR>

  " bits stolen from alchemist-vim and slightly modified
  function! Exdoc(...)
    let query = ''
    if empty(a:000)
      let query = Lookup_name_under_cursor()
    else
      let query = a:000[0]
    endif
    silent! execute 'botright new'
    call termopen('elixir -e "require IEx.Helpers; IEx.Helpers.h '.query.'"')
    execute 'nnoremap <buffer> q :bd!<cr>'
  endfunction

  function! Lookup_name_under_cursor()
    "looking for full function/module string
    "ex. OptionParse.parse
    "ex. GenServer
    "ex. List.Chars.Atom
    "ex. {:ok, Map.new}
    "ex. Enum.map(&Guard.execute(&1))
    "ex. Enum.all?(&(&1.valid?))
    let module_func_match = '[A-Za-z0-9\._?!]\+'
    let before_cursor = strpart(getline('.'), 0, col('.'))
    let after_cursor = strpart(getline('.'), col('.'))
    let elixir_erlang_module_func_match = ':\?' . module_func_match
    let before_match = matchlist(before_cursor, elixir_erlang_module_func_match . '$')
    let after_match = matchlist(after_cursor, '^' . module_func_match)
    let query = ''
    let before = ''
    if len(before_match) > 0
      let before = before_match[0]
    endif
    let after = ''
    if len(after_match) > 0
      let after = after_match[0]
    endif
    if before =~ '\.$'
      "case before = List.Chars. after = to_char_list
      let query = substitute(before, '[.]$', '', '')
    elseif after =~ '^\.'
      "case before = List.Chars  after = .to_char_list
      let query = before
    elseif after =~ '.*\.'
      "case before = OptionParse after = r.parse
      "case before = Mix.Shel    after = l.IO.cmd
      let up_to_dot = matchlist(after, '\([A-Za-z0-9_]\+\)\.')
      let query = before . up_to_dot[2]
    else
      let query = before . after
    endif
    return query
  endfunction

nnoremap <buffer> <C-]> :Tags <c-r>=Lookup_name_under_cursor()<CR><CR>
