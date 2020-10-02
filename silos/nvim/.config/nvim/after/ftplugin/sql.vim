map " ysiw"
map <leader>e <Plug>(DBUI_ExecuteQuery)
map gd <Plug>(DBUI_JumpToForeignKey)

let g:db_ui_table_helpers = {
\ 	'postgresql': {
\ 		'Count': 'select count(*) from {optional_schema}{table}',
\ 		'Explain': 'EXPLAIN ANALYZE {last_query}'
\ 	}
\ }

let g:db_ui_execute_on_save = 0
