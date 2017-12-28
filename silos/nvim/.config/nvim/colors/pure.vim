set background=light
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="pure"

" Editor settings
hi Normal          ctermfg=Black  ctermbg=none    cterm=none
hi Cursor          ctermfg=Red    ctermbg=none    cterm=none
hi CursorLine      ctermfg=none   ctermbg=White    cterm=none
hi LineNr          ctermfg=Grey   ctermbg=none    cterm=none
hi CursorLineNR    ctermfg=Black  ctermbg=none    cterm=none

" - Number column -
hi CursorColumn    ctermfg=none    ctermbg=White    cterm=none
hi FoldColumn      ctermfg=Black    ctermbg=none    cterm=none
hi SignColumn      ctermfg=Black    ctermbg=none    cterm=none
hi Folded          ctermfg=Black    ctermbg=none    cterm=none

" - Window/Tab delimiters -
hi VertSplit       ctermfg=DarkGrey    ctermbg=none    cterm=none
hi ColorColumn     ctermfg=none    ctermbg=White    cterm=none
hi TabLine         ctermfg=DarkGrey    ctermbg=Black    cterm=none
hi TabLineFill     ctermfg=DarkGrey    ctermbg=Black    cterm=none
hi TabLineSel      ctermfg=Black    ctermbg=White    cterm=bold

" - File Navigation / Searching -
hi Directory       ctermfg=Black    ctermbg=none    cterm=bold
hi Search          ctermfg=Black    ctermbg=Yellow    cterm=none
hi IncSearch       ctermfg=Black    ctermbg=Yellow    cterm=none

" - Prompt/Status -
hi StatusLine      ctermfg=White    ctermbg=Black    cterm=bold
hi StatusLineNC    ctermfg=DarkGrey    ctermbg=Black    cterm=none
hi WildMenu        ctermfg=Black    ctermbg=none    cterm=none
hi Question        ctermfg=Red    ctermbg=none    cterm=none
hi Title           ctermfg=Black    ctermbg=none    cterm=none
hi ModeMsg         ctermfg=Red    ctermbg=none    cterm=none
hi MoreMsg         ctermfg=Red    ctermbg=none    cterm=none

" - Visual aid -
hi MatchParen      ctermfg=none    ctermbg=Green    cterm=none
hi Visual          ctermfg=White    ctermbg=DarkBlue    cterm=none
hi VisualNOS       ctermfg=Black    ctermbg=none    cterm=none
hi NonText         ctermfg=Grey    ctermbg=none    cterm=none
hi Todo            ctermfg=Red    ctermbg=none    cterm=bold
hi Underlined      ctermfg=Black    ctermbg=none    cterm=underline
hi Error           ctermfg=White    ctermbg=Red    cterm=none
hi ErrorMsg        ctermfg=White    ctermbg=Red    cterm=none
hi WarningMsg      ctermfg=Red    ctermbg=none    cterm=none
hi Ignore          ctermfg=Black    ctermbg=none    cterm=none
hi SpecialKey      ctermfg=Black    ctermbg=none    cterm=none

" Variable types
hi Constant        ctermfg=DarkGrey    ctermbg=none    cterm=none
hi String          ctermfg=DarkGrey    ctermbg=none    cterm=none
hi Character       ctermfg=Black    ctermbg=none    cterm=none
hi Number          ctermfg=Black    ctermbg=none    cterm=bold
hi Boolean         ctermfg=Black    ctermbg=none    cterm=bold
hi Float           ctermfg=Black    ctermbg=none    cterm=none

hi Identifier      ctermfg=Black    ctermbg=none    cterm=bold
hi Function        ctermfg=Black    ctermbg=none    cterm=bold

" Language constructs
hi Statement       ctermfg=Black    ctermbg=none    cterm=none
hi Conditional     ctermfg=Black    ctermbg=none    cterm=none
hi Repeat          ctermfg=Black    ctermbg=none    cterm=none
hi Label           ctermfg=Black    ctermbg=none    cterm=none
hi Operator        ctermfg=Black    ctermbg=none    cterm=bold
hi Keyword         ctermfg=Black    ctermbg=none    cterm=bold
hi Exception       ctermfg=Black    ctermbg=none    cterm=none
hi Comment         ctermfg=Gray    ctermbg=none    cterm=italic

hi Special         ctermfg=DarkBlue    ctermbg=none    cterm=none
hi SpecialChar     ctermfg=Black    ctermbg=none    cterm=none
hi Tag             ctermfg=Black    ctermbg=none    cterm=none
hi Delimiter       ctermfg=Brown    ctermbg=none    cterm=none
hi SpecialComment  ctermfg=Black    ctermbg=none    cterm=none
hi Debug           ctermfg=Black    ctermbg=none    cterm=none

" - C like -
hi PreProc         ctermfg=Black    ctermbg=none    cterm=none
hi Include         ctermfg=Black    ctermbg=none    cterm=bold
hi Define          ctermfg=Black    ctermbg=none    cterm=bold
hi Macro           ctermfg=Black    ctermbg=none    cterm=none
hi PreCondit       ctermfg=Black    ctermbg=none    cterm=none

hi Type            ctermfg=Black    ctermbg=none    cterm=bold
hi StorageClass    ctermfg=Black    ctermbg=none    cterm=none
hi Structure       ctermfg=Black    ctermbg=none    cterm=none
hi Typedef         ctermfg=Black    ctermbg=none    cterm=none

" Diff
hi DiffAdd         ctermfg=none    ctermbg=DarkGreen    cterm=none
hi DiffChange      ctermfg=none    ctermbg=DarkGreen    cterm=none
hi DiffDelete      ctermfg=none    ctermbg=Red    cterm=none
hi DiffText        ctermfg=none    ctermbg=none    cterm=none

" Completion menu
hi Pmenu           ctermfg=Black    ctermbg=none    cterm=none
hi PmenuSel        ctermfg=White    ctermbg=Red    cterm=none
hi PmenuSbar       ctermfg=Black    ctermbg=none    cterm=none
hi PmenuThumb      ctermfg=Grey    ctermbg=none    cterm=none

" Spelling
hi SpellBad        ctermfg=none    ctermbg=none    cterm=none
hi SpellCap        ctermfg=none    ctermbg=none    cterm=none
hi SpellLocal      ctermfg=none    ctermbg=none    cterm=none
hi SpellRare       ctermfg=none    ctermbg=none    cterm=none

" Specific settings
hi elixirDocString ctermfg=Brown ctermbg=none cterm=none

" Test the actual colorscheme
syn match Comment      "\"__Comment.*"
syn match Constant     "\"__Constant.*"
syn match Cursor       "\"__Cursor.*"
syn match CursorLine   "\"__CursorLine.*"
syn match DiffAdd      "\"__DiffAdd.*"
syn match DiffChange   "\"__DiffChange.*"
syn match DiffText     "\"__DiffText.*"
syn match DiffDelete   "\"__DiffDelete.*"
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
