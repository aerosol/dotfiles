local lush = require("lush")
local hsl = lush.hsl

local bg = hsl(0, 0, 0)
local white = "#ffffff"
local basic = "#aaaaaa"
local bright = "#bbbbbb"
local faded = "#666666"
local subtle = "#222222"
local dark = "#111111"
local highlight1 = "#00005f"
local highlight2 = "#fffefa"
local special = "#789468"

---@diagnostic disable: undefined-global
local theme = lush(function()
	return {
		Normal({ bg = bg, fg = basic }),
		Directory({ fg = special, gui = "italic" }),
		DirBufFile({ fg = bright, gui = "italic" }),
		LineNr({ fg = subtle }),
		Comment({ fg = faded, gui = "italic" }),
		Keyword({ Normal }),
		Type({ Normal }),
		SpecialKey({ Normal }),
		Function({ fg = bright, gui = "italic" }),
		Identifier({ Normal }),
		MatchParen({ fg = white, bg = special }),
		Operator({ fg = faded }),
		Conditional({ Normal }),
		Statement({ fg = faded }),
		Tag({ Normal }),
		Delimiter({ fg = faded }),
		Special({ Normal }),
		SpecialChar({ Normal }),
		Visual({ bg = highlight1, fg = bright }),
		String({ fg = special }),
		Title({ fg = special }),
		Constant({ fg = special, gui = "italic" }),
		Number({ Normal }),
		Boolean({ Normal }),
		Search({ fg = dark, bg = highlight2 }),
		IncSearch({ fg = dark, bg = highlight2 }),
		SignColumn({ fg = special, bg = "none" }),
		DiffAdd({ fg = special, bg = "none" }),
		DiffChange({ fg = highlight2, bg = "none" }),
		DiffDelete({ fg = "red", bg = "none" }),
		Pmenu({ bg = highlight1, fg = white }),
		NormalFloat({ Pmenu }),
		PmenuExtra({ Pmenu }),
		PmenuSel({ bg = faded, fg = white }),
		PmenuExtraSel({ PmenuSel }),
		PmenuKind({ Pmenu }),
		PmenuKindSel({ PmenuSel }),
		PmenuSbar({ bg = "#eeeeee" }),
		PmenuThumb({ bg = "#185858" }),
	}
end)

return theme
