return {
	{
		'declancm/cinnamon.nvim',
		config = function()
			require('cinnamon').setup({
				extra_keymaps = true

			})
		end
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {}, -- this is equalent to setup({}) function
	},
	{
		"kylechui/nvim-surround",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},
	"tpope/vim-sleuth",
	"andymass/vim-matchup",
	{
		"jinh0/eyeliner.nvim",
		config = function()
			require("eyeliner").setup({
				highlight_on_key = true, -- show highlights only after keypress
				dim = true,          -- dim all other characters if set to true (recommended!)
			})
		end,
	},
}
