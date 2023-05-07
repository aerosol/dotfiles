--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is the lush quickstart tutorial, it provides a basic overview
-- of the lush experience and API.
--
-- First, enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`
--
-- (try putting your cursor inside the ` and typing yi`:@"<CR>)
--
-- Calls to hsl()/hsluv() are now highlighted with the correct background colour
-- Highlight names groups will have the highlight style applied to them.

local lush = require("lush")
local hsl = lush.hsl
-- You may also use the HSLuv colorspace, see http://www.hsluv.org/ and h: lush-hsluv-colors.
-- Replace calls to hsl() with hsluv()
-- local hsluv = lush.hsluv

-- HSL stands for Hue        (0 - 360)
--                Saturation (0 - 100)
--                Lightness  (0 - 100)
--
-- By working with HSL, it's easy to define relationships between colours.

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
		Normal({ bg = bg, fg = basic }), -- normal text
		LineNr({ fg = subtle }),
		Comment({ fg = faded, gui = "italic" }),
		Keyword({ Normal }),
		Type({ Normal }),
		Directory({ Normal }),
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

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap:number
