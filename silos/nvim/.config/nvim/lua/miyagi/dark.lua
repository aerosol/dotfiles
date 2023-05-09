local lush = require("lush")
local hsl = lush.hsl

local bg = hsl(0, 0, 0)
local white = "#ffffff"
local basic = "#aaaaaa"
local bright = "#bbbbbb"
local faded = "#666666"
local subtle = "#222222"
local dark = "#222222"
local highlight1 = "#00005f"
local highlight2 = "#111111"
local highlight3 = "#ced9b2"
local special = "#789468"
local warn = "#824149"

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
		MatchWord({ fg = "none", bg = "none", gui = "underline" }),
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
		Search({ fg = white, bg = dark, gui = "underline" }),
		IncSearch({ fg = white, bg = dark, gui = "underline" }),
		SignColumn({ fg = highlight3, bg = "none" }),
		DiffAdd({ fg = special, bg = "none" }),
		DiffChange({ fg = highlight2, bg = "none" }),
		DiffDelete({ fg = warn, bg = "none" }),
		diffAdded({ DiffAdd }),
		diffRemoved({ DiffDelete }),
		WarningMessage({ DiffDelete }),
		Pmenu({ bg = highlight1, fg = white }),
		NormalFloat({ bg = dark }),
		PmenuExtra({ Pmenu }),
		PmenuSel({ bg = faded, fg = white }),
		PmenuExtraSel({ PmenuSel }),
		PmenuKind({ Pmenu }),
		PmenuKindSel({ PmenuSel }),
		PmenuSbar({ bg = "#eeeeee" }),
		PmenuThumb({ bg = "#185858" }),
		Todo({ fg = white, gui = "underline" }),
	}
end)

return theme
