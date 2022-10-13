hi clear
syntax reset
let g:colors_name = "dumbo_light"

hi Boolean gui=NONE guifg=#707070 guibg=NONE
hi ColorColumn gui=NONE guifg=NONE guibg=#eeeeee
hi Comment gui=italic guifg=#688888 guibg=NONE
hi Conceal gui=NONE guifg=#707070 guibg=NONE
hi Conditional gui=NONE guifg=#4a4a4a guibg=NONE
hi Constant gui=NONE guifg=#707070 guibg=NONE
hi Cursor guifg=#ff0000 guibg=#ff0000
hi CursorColumn gui=NONE guifg=NONE guibg=#eeeeee
hi CursorLine gui=NONE guifg=NONE guibg=#eeeeee
hi CursorLineNr gui=NONE guifg=#969696 guibg=NONE
hi DiffAdd gui=NONE guifg=NONE guibg=#b5ffab
hi DiffAdded gui=NONE guifg=NONE guibg=#b5ffab
hi DiffChange gui=NONE guifg=NONE guibg=#f5f5f5
hi DiffChanged gui=NONE guifg=NONE guibg=#f5f5f5
hi DiffDelete gui=NONE guifg=NONE guibg=#fff0f0
hi DiffRemoved gui=NONE guifg=#ffffff guibg=#aa0000
hi DiffText gui=NONE guifg=NONE guibg=#e3e3e3
hi diffLine gui=bold guibg=yellow
hi fileEntry gui=bold
hi Directory gui=NONE guifg=#4a4a4a guibg=NONE
hi Error gui=NONE guifg=NONE guibg=#fff0f0
hi ErrorMsg gui=NONE guifg=NONE guibg=#fff0f0
hi FoldColumn gui=NONE guifg=#c2c2c2 guibg=NONE
hi Folded gui=NONE guifg=#834c73 guibg=NONE
hi Ignore gui=NONE guifg=NONE guibg=NONE
hi IncSearch gui=bold guifg=#000000 guibg=#aaeeee
hi Search gui=NONE guifg=#333333 guibg=yellow
hi Visual gui=NONE guifg=#000000 guibg=#aeeeee
hi VisualNOS gui=NONE guifg=NONE guibg=NONE
hi LineNr gui=NONE guifg=#c2c2c2 guibg=NONE
hi MatchParen gui=NONE guifg=NONE guibg=#e3e3e3
hi ModeMsg gui=NONE guifg=NONE guibg=NONE
hi MoreMsg gui=NONE guifg=NONE guibg=NONE
hi NonText gui=NONE guifg=#eeeeee guibg=NONE
hi Normal gui=NONE guifg=#000000 guibg=NONE
hi Number gui=NONE guifg=#c05169 guibg=NONE
hi Pmenu gui=NONE guifg=NONE guibg=#f5f5f5
hi PmenuSbar gui=NONE guifg=NONE guibg=#ededed
hi PmenuSel gui=NONE guifg=NONE guibg=#e3e3e3
hi PmenuThumb gui=NONE guifg=NONE guibg=#dbdbdb
hi Question gui=NONE guifg=NONE guibg=NONE
hi SignColumn gui=NONE guifg=#c2c2c2 guibg=NONE
hi Special gui=NONE guifg=#707070 guibg=NONE
hi SpecialKey gui=NONE guifg=#c2c2c2 guibg=NONE
hi SpellBad gui=undercurl guisp=NONE guifg=NONE guibg=#fff0f0
hi SpellCap gui=undercurl guisp=NONE guifg=NONE guibg=NONE
hi SpellLocal gui=undercurl guisp=NONE guifg=NONE guibg=#f0fff0
hi SpellRare gui=undercurl guisp=NONE guifg=NONE guibg=#ededed
hi Statement gui=bold guifg=#4a4a4a guibg=NONE
hi StatusLine gui=underline guifg=#000000 guibg=#aeeeee
hi StatusLineNC gui=underline guifg=#cccccc guibg=#eaffff
hi StorageClass gui=NONE guifg=#4a4a4a guibg=NONE
hi String gui=NONE guifg=#161d82 guibg=NONE
hi TabLine gui=NONE guifg=#969696 guibg=#ededed
hi TabLineFill gui=NONE guifg=NONE guibg=#ededed
hi TabLineSel gui=NONE guifg=#000000 guibg=#cccccc
hi Title gui=NONE guifg=#707070 guibg=NONE
hi Todo gui=standout guifg=NONE guibg=NONE
hi Type gui=italic guifg=#4a4a4a guibg=NONE
hi Underlined gui=NONE guifg=NONE guibg=NONE
hi VertSplit gui=NONE guifg=#888888 guibg=NONE
hi WarningMsg gui=NONE guifg=NONE guibg=#fff0f0
hi WildMenu gui=NONE guifg=NONE guibg=#d1d1d1
hi lCursor gui=NONE guifg=NONE guibg=NONE
hi Identifier gui=bold guifg=NONE guibg=NONE
hi PreProc gui=NONE guifg=NONE guibg=NONE

hi elixirExUnitMacro guifg=#111111
hi elixirModuleDefine guifg=#444444 gui=bold
hi elixirModuleDeclaration guifg=#000000 gui=bold
hi elixirInclude guifg=#444444 gui=bold
hi elixirBlockDefinition guifg=#444444
hi elixirFunctionDeclaration guifg=#ba61ad gui=bold
hi elixirDefine guifg=#ba61ad gui=bold
hi elixirOperator guifg=#5f5f5f
hi elixirBlock guifg=#646464
hi elixirFunctionCall guifg=#8b8567
hi elixirAlias guifg=#c05169 gui=bold
hi elixirId guifg=#333333
hi elixirAtom guifg=#220077
hi elixirBoolean guifg=#46939f
hi elixirMapDelimiter guifg=#7e9b9d
hi elixirTupleDelimiter guifg=#859d75
hi elixirKeyword guifg=#777777
hi elixirBlockDefinition guifg=#777777
hi elixirPrivateDefine guifg=#555555
hi elixirPrivateFunctionDeclaration guifg=#111111
hi elixirVariable guifg=#2233aa gui=bold
hi elixirInterpolationDelimiter guifg=#007700 
hi elixirUnusedVariable gui=NONE guifg=#888888

hi sqlComment guibg=#333333 guifg=#ffffff gui=italic

hi goType guibg=NONE guifg=#c05169 gui=italic
hi goDeclType guibg=NONE guifg=#007700 gui=italic

highlight link HighlightedyankRegion DiffAdded
highlight link plugName Comment
highlight link markdownCode Comment

hi markdownH1 gui=bold guifg=#000000
hi markdownH2 gui=bold guifg=#000000
hi markdownH3 gui=bold guifg=#000000
hi markdownH4 gui=bold guifg=#000000
hi markdownH5 gui=bold guifg=#000000
hi markdownH6 gui=bold guifg=#000000
hi markdownH7 gui=bold guifg=#000000
hi markdownLinkText gui=bold guifg=#000000
hi markdownCodeDelimiter guifg=#cccccc

hi link TSVariable elixirId
hi link TSFunction elixirFunctionDeclaration
hi link TSParameter elixirVariable
hi link TSInclude elixirInclude
hi link TSProperty elixirBlockDefinition
hi link TSConstBuiltin elixirAtom

hi RustInlayHint gui=italic guifg=#bbbbbb

" Test the actual colorscheme
syn match Comment      "\"__Comment.*"
syn match Constant     "\"__Constant.*"
syn match Cursor       "\"__Cursor.*"
syn match CursorLine   "\"__CursorLine.*"
syn match DiffAdded      "\"__DiffAdd.*"
syn match DiffChange   "\"__DiffChange.*"
syn match DiffText     "\"__DiffText.*"
syn match DiffRemoved   "\"__DiffDelete.*"
syn match Folded       "\"__Folded.*"
syn match Function     "\"__Function.*"
syn match Identifier   "\"__Identifier.*"
syn match IncSearch    "\"__IncSearch.*"
syn match NonText      "\"__NonText.*"
syn match Normal       "\"__Normal.*"
syn match Pmenu        "\"__Pmenu.*"
syn match PreProc      "\"__PreProc.*"
syn match Search       "\"__Search.*"
syn match Special      "\"__Special.*"
syn match SpecialKey   "\"__SpecialKey.*"
syn match Statement    "\"__Statement.*"
syn match StatusLine   "\"__StatusLine.*"
syn match StatusLineNC "\"__StatusLineNC.*"
syn match String       "\"__String.*"
syn match Todo         "\"__Todo.*"
syn match Type         "\"__Type.*"
syn match Underlined   "\"__Underlined.*"
syn match VertSplit    "\"__VertSplit.*"
syn match Visual       "\"__Visual.*"

"__Comment              /* this is a comment */
"__Constant             var = SHBLAH
"__Cursor               char under the cursor?
"__CursorLine           Line where the cursor is
"__DiffAdd              +line added from file.orig
"__DiffChange           line changed from file.orig
"__DiffText             actual changes on this line
"__DiffDelete           -line removed from file.orig
"__Folded               +--- 1 line : Folded line ---
"__Function             function sblah()
"__Identifier           Never ran into that actually...
"__IncSearch            Next search term
"__NonText              This is not a text, move on
"__Normal               Typical text goes like this
"__Pmenu                Currently selected menu item
"__PreProc              #define SHBLAH true
"__Search               This is what you're searching for
"__Special              true false NULL SIGTERM
"__SpecialKey           Never ran into that either
"__Statement            if else return for switch
"__StatusLine           Statusline of current windows
"__StatusLineNC         Statusline of other windows
"__String               "Hello, World!"
"__Todo                 TODO: remove todos from source
"__Type                 int float char void unsigned uint32_t
"__Underlined           Anything underlined
"__VertSplit            :vsplit will only show ' | '
"__Visual               Selected text looks like this
