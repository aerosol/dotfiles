local colors_name = "hq1bones"
vim.g.colors_name = colors_name -- Required when defining a colorscheme

local lush = require "lush"
local hsluv = lush.hsluv -- Human-friendly hsl
local util = require "zenbones.util"

local bg = vim.o.background

-- Define a palette. Use `palette_extend` to fill unspecified colors
-- Based on https://github.com/gruvbox-community/gruvbox#palette
local palette
palette = util.palette_extend({
	bg = hsluv "#000000",
	fg = hsluv "#ADBAC7",
	rose = hsluv "#c05169",
	leaf = hsluv "#81a76a",
	wood = hsluv "#cc8567",
	water = hsluv "#5C6370",
	blossom = hsluv "#ee4959",
	sky = hsluv "#46939f",
}, bg)

-- Generate the lush specs using the generator util
local generator = require "zenbones.specs"
local base_specs = generator.generate(palette, bg, generator.get_global_config(colors_name, bg))

-- Optionally extend specs using Lush
local specs = lush.extends({ base_specs }).with(function()
	return {
		Folded { bg = palette.sky.darken(90), fg = palette.fg },
		Statement { base_specs.Statement, fg = palette.rose },
		Special { fg = palette.water },
		Type { fg = palette.sky },
	}
end)

-- Pass the specs to lush to apply
lush(specs)

-- Optionally set term colors
require("zenbones.term").apply_colors(palette)
