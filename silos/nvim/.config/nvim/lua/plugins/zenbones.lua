return {
	"mcchrish/zenbones.nvim",
	dependencies = "rktjmp/lush.nvim",
	config = function()
		vim.g.hq1bones_transparent_background = true
		vim.cmd([[colorscheme hq1bones]])
	end,
}
