return {
	{
		"folke/styler.nvim",
		dependencies = {
			"projekt0n/github-nvim-theme",
		},
		config = function()
			require("styler").setup({
				themes = {
					javascript = { colorscheme = "github_dark_high_contrast" },
				},
			})
		end,
	},
	{
		"rktjmp/lush.nvim",
		config = function()
			if os.getenv("MUH_THEME") == "light" then
				vim.o.background = "light"
			else
				vim.o.background = "dark"
			end
			vim.cmd("colorscheme miyagi")
		end,
	},
}
