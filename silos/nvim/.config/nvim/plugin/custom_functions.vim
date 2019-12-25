function! Preserve(command)
  let _s=@/
  let l = line(".")
  let c = col(".")
  execute a:command
  let @/=_s
  call cursor(l, c)
endfunction

function! StatuslineTrailingSpaceWarning()
  if !exists("b:statusline_trailing_space_warning")
    if search('\s\+$', 'nw') != 0
      let b:statusline_trailing_space_warning = '👽'
    else
      let b:statusline_trailing_space_warning = ''
    endif
  endif
  return b:statusline_trailing_space_warning
endfunction

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! WinZoomToggle()
  if !exists('w:WinZoomIsZoomed') 
    let w:WinZoomIsZoomed = 0
  endif
  if w:WinZoomIsZoomed == 0
    execute "tabedit %"
    let w:WinZoomIsZoomed = 1
  elseif w:WinZoomIsZoomed == 1
    execute "tabclose"
    let w:WinZoomIsZoomed = 0
  endif
endfunction

