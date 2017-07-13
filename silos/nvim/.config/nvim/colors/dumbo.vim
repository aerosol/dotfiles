hi clear
syntax reset
let g:colors_name = "dumbo"

hi! link NeomakeErrorDefault Error
hi! link NeomakeMessageSignDefault Error
hi! link NeomakeMessageSign Error
hi! link NeomakeWarningSignDefault WarningMsg
hi! link NeomakeWarningSign WarningMsg
hi! link NeomakeErrorSignDefault Error
hi! link NeomakeErrorSign Error
hi! link NeomakeInfoSignDefault Comment
hi! link NeomakeInfoSign Comment
hi! link NeomakeError Error
hi! link NeomakeInfoDefault Comment
hi! link NeomakeInfo Comment
hi! link NeomakeMessageDefault Error
hi! link NeomakeMessage Error
hi! link NeomakeWarningDefault WarningMsg
hi! link NeomakeWarning WarningMsg

if &background == "light"
    hi Boolean gui=NONE guifg=#707070 guibg=NONE
    hi ColorColumn gui=NONE guifg=NONE guibg=#f2efe3
    hi Comment gui=NONE guifg=#aaa1a5 guibg=NONE
    hi Conceal gui=NONE guifg=#707070 guibg=NONE
    hi Conditional gui=NONE guifg=#4a4a4a guibg=NONE
    hi Constant gui=NONE guifg=#707070 guibg=NONE
    hi Cursor gui=reverse guifg=#fa0015 guibg=#fcfbe9
    hi CursorColumn gui=NONE guifg=NONE guibg=#fcfaf4
    hi CursorLine gui=NONE guifg=NONE guibg=#fcfaf4
    hi CursorLineNr gui=NONE guifg=#969696 guibg=NONE
    hi DiffAdd gui=NONE guifg=#4a734c guibg=#62e47e
    hi DiffChange gui=NONE guifg=NONE guibg=#a5d9df
    hi DiffDelete gui=NONE guifg=NONE guibg=#fca8a6
    hi DiffText gui=NONE guifg=NONE guibg=#b9f1f9
    hi Directory gui=NONE guifg=#4a4a4a guibg=NONE
    hi Error gui=NONE guifg=NONE guibg=#fca8a6
    hi ErrorMsg gui=NONE guifg=NONE guibg=#fc7c78
    hi FoldColumn gui=NONE guifg=#c2c2c2 guibg=NONE
    hi Folded gui=NONE guifg=#969696 guibg=NONE
    hi Ignore gui=NONE guifg=NONE guibg=NONE
    hi IncSearch gui=NONE guifg=#ffffff guibg=#f91894
    hi LineNr gui=NONE guifg=#c2c2c2 guibg=NONE
    hi MatchParen gui=NONE guifg=NONE guibg=#a6f2a1
    hi ModeMsg gui=NONE guifg=NONE guibg=NONE
    hi MoreMsg gui=NONE guifg=NONE guibg=NONE
    hi NonText gui=NONE guifg=#c2c2c2 guibg=#fffaf5
    hi Normal gui=NONE guifg=#000000 guibg=#ffffff
    hi Number gui=NONE guifg=#707070 guibg=NONE
    hi Pmenu gui=NONE guifg=NONE guibg=#f5f5f5
    hi PmenuSbar gui=NONE guifg=NONE guibg=#ededed
    hi PmenuSel gui=NONE guifg=NONE guibg=#e3e3e3
    hi PmenuThumb gui=NONE guifg=NONE guibg=#dbdbdb
    hi Question gui=NONE guifg=NONE guibg=NONE
    hi Search gui=NONE guifg=#ffffff guibg=#f91894
    hi SignColumn gui=NONE guifg=#c2c2c2 guibg=NONE
    hi Special gui=NONE guifg=#707070 guibg=NONE
    hi SpecialKey gui=NONE guifg=#c2c2c2 guibg=NONE
    hi SpellBad gui=undercurl guisp=NONE guifg=NONE guibg=#fff0f0
    hi SpellCap gui=undercurl guisp=NONE guifg=NONE guibg=NONE
    hi SpellLocal gui=undercurl guisp=NONE guifg=NONE guibg=#f0fff0
    hi SpellRare gui=undercurl guisp=NONE guifg=NONE guibg=#ededed
    hi Statement gui=NONE guifg=#4a4a4a guibg=NONE
    hi StatusLine gui=NONE guifg=#fcfbe9 guibg=#b9b8ac
    hi StatusLineNC gui=NONE guifg=#969696 guibg=#e6e6d5
    hi StorageClass gui=NONE guifg=#4a4a4a guibg=NONE
    hi String gui=NONE guifg=#707070 guibg=NONE
    hi TabLine gui=NONE guifg=#b5b5b5 guibg=#fcfbe9
    hi TabLineFill gui=NONE guifg=NONE guibg=#fcfbe9
    hi TabLineSel gui=NONE guifg=#6e686b guibg=#efebe1
    hi Title gui=NONE guifg=#707070 guibg=NONE
    hi Todo gui=standout guifg=#fcfbe9 guibg=#867e82
    hi Type gui=NONE guifg=#4a4a4a guibg=NONE
    hi Underlined gui=NONE guifg=NONE guibg=NONE
    hi VertSplit gui=NONE guifg=#e3e3e3 guibg=NONE
    hi Visual gui=NONE guifg=NONE guibg=#fcfbe9
    hi VisualNOS gui=NONE guifg=NONE guibg=NONE
    hi WarningMsg gui=NONE guifg=NONE guibg=#fca8a6
    hi WildMenu gui=NONE guifg=NONE guibg=#d1d1d1
    hi lCursor gui=NONE guifg=NONE guibg=NONE
    hi Identifier gui=NONE guifg=NONE guibg=NONE
    hi PreProc gui=NONE guifg=NONE guibg=NONE
elseif &background == "dark"
    hi Boolean gui=NONE guifg=#808080 guibg=NONE
    hi ColorColumn gui=NONE guifg=NONE guibg=#1a1a1a
    hi Comment gui=NONE guifg=#707070 guibg=NONE
    hi Conceal gui=NONE guifg=#808080 guibg=NONE
    hi Conditional gui=NONE guifg=#8f8f8f guibg=NONE
    hi Constant gui=NONE guifg=#808080 guibg=NONE
    hi Cursor gui=reverse guifg=NONE guibg=NONE
    hi CursorColumn gui=NONE guifg=NONE guibg=#1a1a1a
    hi CursorLine gui=NONE guifg=NONE guibg=#1a1a1a
    hi CursorLineNr gui=NONE guifg=#707070 guibg=NONE
    hi DiffAdd gui=NONE guifg=NONE guibg=#082608
    hi DiffChange gui=NONE guifg=NONE guibg=#2e3830
    hi DiffDelete gui=NONE guifg=NONE guibg=#260808
    hi DiffText gui=NONE guifg=#ffffff guibg=#08661a
    hi Directory gui=NONE guifg=#8f8f8f guibg=NONE
    hi Error gui=NONE guifg=#ff0000 guibg=NONE
    hi ErrorMsg gui=NONE guifg=#ff0000 guibg=NONE
    hi FoldColumn gui=NONE guifg=#616161 guibg=NONE
    hi Folded gui=NONE guifg=#707070 guibg=NONE
    hi Ignore gui=NONE guifg=NONE guibg=NONE
    hi IncSearch gui=NONE guifg=#ffffff guibg=#f91894
    hi LineNr gui=NONE guifg=#616161 guibg=NONE
    hi MatchParen gui=NONE guifg=NONE guibg=#333333
    hi ModeMsg gui=NONE guifg=NONE guibg=NONE
    hi MoreMsg gui=NONE guifg=NONE guibg=NONE
    hi NonText gui=NONE guifg=#616161 guibg=NONE
    hi Normal gui=NONE guifg=#b0b0b0 guibg=#0a0a0a
    hi Number gui=NONE guifg=#808080 guibg=NONE
    hi Pmenu gui=NONE guifg=NONE guibg=#1a1a1a
    hi PmenuSbar gui=NONE guifg=NONE guibg=#262626
    hi PmenuSel gui=NONE guifg=NONE guibg=#333333
    hi PmenuThumb gui=NONE guifg=NONE guibg=#424242
    hi Question gui=NONE guifg=NONE guibg=NONE
    hi Search gui=NONE guifg=#ffffff guibg=#f91894
    hi SignColumn gui=NONE guifg=#616161 guibg=NONE
    hi Special gui=NONE guifg=#808080 guibg=NONE
    hi SpecialKey gui=NONE guifg=#616161 guibg=NONE
    hi SpellBad gui=undercurl guisp=NONE guifg=NONE guibg=#260808
    hi SpellCap gui=undercurl guisp=NONE guifg=NONE guibg=NONE
    hi SpellLocal gui=undercurl guisp=NONE guifg=NONE guibg=#082608
    hi SpellRare gui=undercurl guisp=NONE guifg=NONE guibg=#262626
    hi Statement gui=NONE guifg=#8f8f8f guibg=NONE
    hi StatusLine gui=NONE guifg=#9e9e9e guibg=#262626
    hi StatusLineNC gui=NONE guifg=#707070 guibg=#262626
    hi StorageClass gui=NONE guifg=#8f8f8f guibg=NONE
    hi String gui=NONE guifg=#808080 guibg=NONE
    hi TabLine gui=NONE guifg=#707070 guibg=#262626
    hi TabLineFill gui=NONE guifg=NONE guibg=#262626
    hi TabLineSel gui=NONE guifg=#9e9e9e guibg=#262626
    hi Title gui=NONE guifg=#808080 guibg=NONE
    hi Todo gui=standout guifg=NONE guibg=NONE
    hi Type gui=NONE guifg=#8f8f8f guibg=NONE
    hi Underlined gui=NONE guifg=NONE guibg=NONE
    hi VertSplit gui=NONE guifg=#333333 guibg=NONE
    hi Visual gui=NONE guifg=NONE guibg=#333333
    hi VisualNOS gui=NONE guifg=NONE guibg=NONE
    hi WarningMsg gui=NONE guifg=NONE guibg=#260808
    hi WildMenu gui=NONE guifg=NONE guibg=#525252
    hi lCursor gui=NONE guifg=NONE guibg=NONE
    hi Identifier gui=NONE guifg=NONE guibg=NONE
    hi PreProc gui=NONE guifg=NONE guibg=NONE
endif
