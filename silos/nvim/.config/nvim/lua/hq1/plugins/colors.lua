return {
	{
		"Tsuzat/NeoSolarized.nvim",
		config = function()
			require("NeoSolarized").setup({
				transparent = true,
			})
			vim.cmd("colorscheme NeoSolarized")
		end,
	},
}
