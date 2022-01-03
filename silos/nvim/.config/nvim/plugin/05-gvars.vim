let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.eex'
let g:db_async = 1
let g:db_ui_execute_on_save = 0
let g:db_ui_table_helpers = {
\ 	'postgresql': {
\ 		'Count': 'select count(*) from "{optional_schema}{table}"',
\ 		'Explain': 'EXPLAIN ANALYZE {last_query}',
\ 		'Explain (pev)': 'EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS, FORMAT JSON) {last_query}',
\       'Describe': '\d "{optional_schema}{table}";'
\ 	}
\ }
let g:db_ui_use_nerd_fonts = 1
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
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'elixir']
let g:markdown_syntax_conceal = 2
let g:markdown_minlines = 100
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
