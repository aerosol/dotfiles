local colors_name = "hq1bones"
vim.g.colors_name = colors_name -- Required when defining a colorscheme

local lush = require("lush")
local hsluv = lush.hsluv -- Human-friendly hsl
local util = require("zenbones.util")

local bg = vim.o.background

-- Define a palette. Use `palette_extend` to fill unspecified colors
-- Based on https://github.com/gruvbox-community/gruvbox#palette
local palette
palette = util.palette_extend({
	bg = hsluv("#000000"),
	fg = hsluv("#C2C3C7"),
	rose = hsluv("#7E2553"),
	leaf = hsluv("#008751"),
	wood = hsluv("#AB5236"),
	water = hsluv("#5f574f"),
	blossom = hsluv("#FF77A8"),
	sky = hsluv("#83769C"),
}, bg)

-- Generate the lush specs using the generator util
local generator = require("zenbones.specs")
local base_specs = generator.generate(palette, bg, generator.get_global_config(colors_name, bg))

-- Optionally extend specs using Lush
local specs = lush.extends({ base_specs }).with(function()
	return {
		Special({ fg = palette.water }),
		Type({ fg = palette.sky, gui = "italic" }),
	}
end)

-- Pass the specs to lush to apply
lush(specs)

-- Optionally set term colors
require("zenbones.term").apply_colors(palette)
