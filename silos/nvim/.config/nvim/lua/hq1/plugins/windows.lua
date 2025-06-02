return {
	"anuvyklack/windows.nvim",
	dependencies = {
		{ "anuvyklack/middleclass" },
	},
	event = "WinNew",
	config = function()
		vim.o.winwidth = 5
		vim.o.winminwidth = 5
		vim.o.equalalways = false
		require("windows").setup({
			animation = {
				enable = false,
			},
		})
	end,
}
