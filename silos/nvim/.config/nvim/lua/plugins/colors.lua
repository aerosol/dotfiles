return {
	{
		"yasukotelin/shirotelin",
		config = function()
			vim.cmd([[colorscheme shirotelin]])
		end,
	},
	{
		"mcchrish/zenbones.nvim",
		dependencies = "rktjmp/lush.nvim",
		config = function()
			-- vim.g.hq1bones_transparent_background = true
			-- vim.cmd([[colorscheme hq1bones]])
		end,
	},
	{ "NTBBloodbath/sweetie.nvim" },
	{
		"rebelot/kanagawa.nvim",
		config = function()
			-- local k = require("kanagawa")
			-- k.setup({ transparent = true })
			-- k.load("dragon")
		end,
	},
}
