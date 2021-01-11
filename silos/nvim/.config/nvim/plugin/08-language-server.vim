let g:lsc_server_commands = {
 \  'elixir': {
 \    'command': $HOME.'/dev/elixir-ls/rel/language_server.sh'
 \  },
 \  'rust': {
 \    'command': 'rls'
 \  }
 \}

let g:lsc_auto_map = {
 \  'GoToDefinition': 'gd',
 \  'FindReferences': 'gr',
 \  'Rename': 'gR',
 \  'ShowHover': 'K',
 \  'FindCodeActions': 'ga',
 \  'Completion': 'omnifunc',
 \  'DocumentSymbol': 'go',
 \  'WorkspaceSymbol': 'gS',
 \  'SignatureHelp': 'gm'
 \}

nmap g? :LSClientLineDiagnostics<CR>

set completeopt=menu,menuone,noinsert,noselect

let g:lsc_enable_autocomplete = v:true
let g:lsc_enable_diagnostics = v:true
let g:lsc_reference_highlights = v:true
let g:lsc_trace_level = 'off'
let g:lsc_hover_popup = v:false
