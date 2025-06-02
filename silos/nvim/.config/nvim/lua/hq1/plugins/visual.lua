return {
	{
		"brenoprata10/nvim-highlight-colors",
		config = function()
			require("nvim-highlight-colors").setup({
				render = "background",
				virtual_symbol = "",
				virtual_symbol_prefix = " ",
				virtual_symbol_position = "eow",
				enable_named_colors = true,
				enable_tailwind = true,
			})
		end,
	},
}
