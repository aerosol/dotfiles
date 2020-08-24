hi clear
syntax reset
let g:colors_name = "dumbo_light"

hi Boolean gui=NONE guifg=#707070 guibg=NONE
hi ColorColumn gui=NONE guifg=NONE guibg=#f5f5f5
hi Comment gui=NONE guifg=#969696 guibg=NONE
hi Conceal gui=NONE guifg=#707070 guibg=NONE
hi Conditional gui=NONE guifg=#4a4a4a guibg=NONE
hi Constant gui=NONE guifg=#707070 guibg=NONE
hi Cursor gui=reverse guifg=NONE guibg=NONE
hi CursorColumn gui=NONE guifg=NONE guibg=#f5f5f5
hi CursorLine gui=NONE guifg=NONE guibg=#eeeeee
hi CursorLineNr gui=NONE guifg=#969696 guibg=NONE
hi DiffAdd gui=NONE guifg=NONE guibg=#f0fff0
hi DiffChange gui=NONE guifg=NONE guibg=#f5f5f5
hi DiffDelete gui=NONE guifg=NONE guibg=#fff0f0
hi DiffText gui=NONE guifg=NONE guibg=#e3e3e3
hi Directory gui=NONE guifg=#4a4a4a guibg=NONE
hi Error gui=NONE guifg=NONE guibg=#fff0f0
hi ErrorMsg gui=NONE guifg=NONE guibg=#fff0f0
hi FoldColumn gui=NONE guifg=#c2c2c2 guibg=NONE
hi Folded gui=NONE guifg=#834c73 guibg=NONE
hi Ignore gui=NONE guifg=NONE guibg=NONE
hi IncSearch gui=NONE guifg=#000000 guibg=#17d0f5
hi Search gui=NONE guifg=#000000 guibg=#17d0f5
hi Visual gui=NONE guifg=#000000 guibg=#17d0f5
hi VisualNOS gui=NONE guifg=NONE guibg=NONE
hi LineNr gui=NONE guifg=#c2c2c2 guibg=NONE
hi MatchParen gui=NONE guifg=NONE guibg=#e3e3e3
hi ModeMsg gui=NONE guifg=NONE guibg=NONE
hi MoreMsg gui=NONE guifg=NONE guibg=NONE
hi NonText gui=NONE guifg=#eeeeee guibg=NONE
hi Normal gui=NONE guifg=#000000 guibg=#ffffff
hi Number gui=NONE guifg=#707070 guibg=NONE
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
hi Statement gui=NONE guifg=#4a4a4a guibg=NONE
hi StatusLine gui=underline guifg=#ffffff guibg=#111111
hi StatusLineNC gui=underline guifg=#707070 guibg=NONE
hi StorageClass gui=NONE guifg=#4a4a4a guibg=NONE
hi String gui=NONE guifg=#161d82 guibg=NONE
hi TabLine gui=NONE guifg=#969696 guibg=#ededed
hi TabLineFill gui=NONE guifg=NONE guibg=#ededed
hi TabLineSel gui=NONE guifg=#000000 guibg=#cccccc
hi Title gui=NONE guifg=#707070 guibg=NONE
hi Todo gui=standout guifg=NONE guibg=NONE
hi Type gui=NONE guifg=#4a4a4a guibg=NONE
hi Underlined gui=NONE guifg=NONE guibg=NONE
hi VertSplit gui=NONE guifg=#888888 guibg=NONE
hi WarningMsg gui=NONE guifg=NONE guibg=#fff0f0
hi WildMenu gui=NONE guifg=NONE guibg=#d1d1d1
hi lCursor gui=NONE guifg=NONE guibg=NONE
hi Identifier gui=NONE guifg=NONE guibg=NONE
hi PreProc gui=NONE guifg=NONE guibg=NONE

hi elixirExUnitMacro guifg=#000000
hi elixirModuleDefine guifg=#111111
hi elixirModuleDeclaration guifg=#000000
hi elixirInclude guifg=#111111
hi elixirBlockDefinition guifg=#111111
hi elixirFunctionDeclaration guifg=#111111
hi elixirDefine guifg=#111111
hi elixirOperator guifg=#5f5f5f
hi elixirAtom guifg=#555555
hi elixirBlock guifg=#646464

hi Blamer     guifg=#5b6d82
hi Beacon     guibg=black ctermbg=15


hi sqlComment guibg=#333333 guifg=#ffffff

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
