let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.eex'
let g:db_async = 1
let g:fern#default_hidden = 1
let g:fern#renderer = "nerdfont"
let g:filebeagle_show_hidden=1
let g:fzf_buffers_jump = 1
let g:fzf_layout = { 'window': { 'width': 1.0, 'height': 0.6, 'border': 'rounded' } }
let g:fzf_preview_window = ['down:30%', 'ctrl-/']
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
let g:gist_post_private = 1
let g:goldenview__enable_default_mapping = 0
let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
let g:interestingWordsRandomiseColors = 1
let g:mix_format_on_save = 1
let g:rooter_patterns = ['.git/']
let g:rooter_silent_chdir = 1
let g:signify_line_highlight = 0
let g:signify_skip_filetype = { 'diff': 1 }
let g:signify_update_on_focusgained = 1
let g:tslime_ensure_trailing_newlines = 2
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "iw", "iW", "ip", "it"]
let g:lens#animate = 0
let g:lens#width_resize_max = 90

function! s:init_fern() abort
  nmap <buffer> <silent> <C-h> <C-w>h
  nmap <buffer> <silent> <C-j> <C-w>j
  nmap <buffer> <silent> <C-k> <C-w>k
  nmap <buffer> <silent> <C-l> <C-w>l
  nmap <buffer> <silent> <tab> <Plug>(fern-action-mark)j
  nmap <buffer> <silent> - <Plug>(fern-action-leave)
  nmap <buffer> <silent> + <Plug>(fern-action-new-path)
  setlocal cursorline
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END
