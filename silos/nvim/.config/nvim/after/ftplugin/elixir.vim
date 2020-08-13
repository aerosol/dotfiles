augroup elixir
  autocmd!
  autocmd FileType eelixir setlocal textwidth=1
  autocmd FileType eelixir setlocal wrapmargin=0
  "autocmd FileType elixir setl formatexpr=CocAction('format')
  "autocmd BufWritePre <buffer> MixFormat
  "command! -nargs=0 MixFormat :call CocAction('format')
augroup END

let test#strategy = 'tslime'
nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>tt :TestNearest<CR>
nnoremap <leader>tl :TestLast<CR>
nnoremap <leader>tv :TestVisit<CR>

"nnoremap <buffer> K :call CocAction('doHover')<CR>

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

nmap <leader>r orequire IEx; IEx.pry<esc>
