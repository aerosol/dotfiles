hi clear
syntax reset
let g:colors_name = "dumbo"

hi Boolean gui=NONE guifg=#808080 guibg=NONE
hi ColorColumn gui=NONE guifg=NONE guibg=NONE
hi Comment gui=NONE guifg=#5C6370 ctermfg=59
hi Conceal gui=NONE guifg=#808080 guibg=NONE
hi Conditional gui=NONE guifg=#8f8f8f guibg=NONE
hi Constant gui=NONE guifg=#808080 guibg=NONE
hi Cursor gui=reverse guifg=NONE guibg=NONE
hi CursorColumn gui=NONE guifg=NONE guibg=#1a1a1a
hi CursorLine gui=NONE guifg=NONE guibg=#1a1a1a
hi CursorLineNr gui=NONE guifg=#707070 guibg=NONE
hi DiffAdded gui=NONE guifg=green guibg=NONE
hi DiffAdd gui=NONE guifg=green guibg=NONE
hi fileEntry gui=NONE guifg=yellow guibg=NONE
hi titleEntry gui=NONE guifg=lightblue guibg=NONE
hi DiffChange gui=NONE guifg=#ffffff guibg=#334b29
hi DiffRemoved gui=NONE guifg=darkred guibg=NONE
hi DiffDelete gui=NONE guifg=darkred guibg=NONE
hi DiffText gui=NONE guifg=#ffffff guibg=#08661a
hi Directory gui=NONE guifg=#8f8f8f guibg=NONE
hi Error gui=NONE guifg=#ff0000 guibg=NONE
hi ErrorMsg gui=NONE guifg=#ff0000 guibg=NONE
hi FoldColumn gui=NONE guifg=#616161 guibg=NONE
hi Folded gui=NONE guifg=#054959 guibg=NONE
hi Ignore gui=NONE guifg=NONE guibg=NONE
hi IncSearch gui=NONE guifg=#ffffff guibg=#316762
hi LineNr gui=NONE guifg=#444444 guibg=NONE
hi MatchParen gui=NONE guifg=#00aa00 guibg=#333333
hi ModeMsg gui=NONE guifg=NONE guibg=NONE
hi MoreMsg gui=NONE guifg=NONE guibg=NONE
hi NonText gui=NONE guifg=#211111 guibg=NONE
hi Normal gui=NONE guifg=#b0b0b0 guibg=NONE
hi Number gui=NONE guifg=#808080 guibg=NONE
hi Pmenu gui=NONE guifg=NONE guibg=#1a1a1a
hi PmenuSbar gui=NONE guifg=NONE guibg=#262626
hi PmenuSel gui=NONE guifg=NONE guibg=#333333
hi PmenuThumb gui=NONE guifg=NONE guibg=#424242
hi Question gui=NONE guifg=NONE guibg=NONE
hi Search gui=NONE guifg=#ffffff guibg=#316762
hi SignColumn gui=NONE guifg=#616161 guibg=NONE
hi Special gui=NONE guifg=#808080 guibg=NONE
hi SpecialKey gui=NONE guifg=#616161 guibg=NONE
hi SpellBad gui=undercurl guisp=NONE guifg=NONE guibg=#260808
hi SpellCap gui=undercurl guisp=NONE guifg=NONE guibg=NONE
hi SpellLocal gui=undercurl guisp=NONE guifg=NONE guibg=#082608
hi SpellRare gui=undercurl guisp=NONE guifg=NONE guibg=#262626
hi Statement gui=NONE guifg=#8f8f8f guibg=NONE
hi StatusLine gui=underline guifg=#000000 guibg=#ffffff
hi StatusLineNC gui=underline guifg=#707070 guibg=NONE
hi StorageClass gui=NONE guifg=#8f8f8f guibg=NONE
hi String gui=NONE guifg=#8ba5a5 guibg=NONE
hi TabLineFill gui=NONE guifg=#cccccc guibg=#262626
hi TabLine gui=NONE guifg=#aaaaaa guibg=#262626
hi TabLineSel gui=NONE guifg=#81a76a guibg=#000000
hi Title gui=NONE guifg=#808080 guibg=NONE
hi Todo gui=standout guifg=NONE guibg=NONE
hi Type gui=NONE guifg=#8f8f8f guibg=NONE
hi Underlined gui=NONE guifg=NONE guibg=NONE
hi VertSplit gui=NONE guifg=#333333 guibg=NONE
hi Visual gui=NONE guifg=#ffffff guibg=#541492
hi VisualNOS gui=NONE guifg=NONE guibg=NONE
hi WarningMsg gui=NONE guifg=NONE guibg=#260808
hi WildMenu gui=NONE guifg=NONE guibg=#525252
hi lCursor gui=NONE guifg=NONE guibg=NONE
hi Identifier gui=NONE guifg=NONE guibg=NONE
hi PreProc gui=NONE guifg=NONE guibg=NONE

highlight CocErrorHighlight ctermfg=Red  guifg=#ff0000
highlight CocUnderline ctermfg=Red guifg=#ff0000 gui=underline
highlight CocErrorSign ctermfg=Red  guifg=#7c1717
highlight CocWarningSign ctermfg=Red guifg=#7c1717
highlight CocFloating guibg=#111111
highlight CocCodeLens guifg=#ffbbff

hi elixirExUnitMacro guifg=#ffffff
hi elixirModuleDefine guifg=#eeeeee
hi elixirModuleDeclaration guifg=#ffffff
hi elixirInclude guifg=#eeeeee
hi elixirBlockDefinition guifg=#eeeeee
hi elixirFunctionDeclaration guifg=#ba61ad
hi elixirDefine guifg=#ba61ad
hi elixirOperator guifg=#5f5f5f
hi elixirAtom guifg=#959595
hi elixirBlock guifg=#646464
hi elixirFunctionCall guifg=#8b8567
hi elixirAlias guifg=#67ad51
hi elixirId guifg=#cccccc
hi elixirAtom guifg=#777777
hi elixirBoolean guifg=#816899
hi elixirMapDelimiter guifg=#7e9b9d
hi elixirTupleDelimiter guifg=#859d75
hi elixirKeyword guifg=#777777
hi elixirBlockDefinition guifg=#777777
hi elixirPrivateDefine guifg=#555555
hi elixirPrivateFunctionDeclaration guifg=#777777

hi rustAttribute guifg=#cccccc
hi rustFuncName guifg=#d3cba5

hi rustFuncCall guifg=#8b8567
hi rustAssert guifg=#eeeeee

hi BookmarkSign guifg=#ffffff guibg=#476b86
hi BookmarkAnnotationSign guifg=#ffffff guifg=#468645

highlight link FernRootText   Directory
highlight link FernBranchText   String

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
