return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			bigfile = { enabled = true },
			notifier = { enabled = true },
			quickfile = { enabled = true },
			statuscolumn = { enabled = true },
			input = { enabled = true },
			-- scroll = { enabled = true },
			picker = {
				enabled = true,
				matcher = {
					frecency = true,
				},
				sources = {
					buffers = {
						current = false,
						file = false,
						layout = "vscode",
					},
				},
			},
		},
		keys = {
			{
				"<leader><leader>",
				function()
					Snacks.picker.buffers()
				end,
				desc = "Buffers",
			},
			{
				"<leader>l",
				function()
					Snacks.picker.grep()
				end,
				desc = "Grep",
			},
			{
				"<leader>L",
				function()
					Snacks.picker.grep({ ignored = true })
				end,
				desc = "Grep all",
			},
			{
				"go",
				function()
					Snacks.picker.files()
				end,
				desc = "Find Files",
			},
			{
				"gO",
				function()
					Snacks.picker.files({ ignored = true })
				end,
				desc = "Find All Files",
			},
			{
				"gd",
				function()
					Snacks.picker.lsp_definitions()
				end,
				desc = "Goto Definition",
			},
			{
				"gr",
				function()
					Snacks.picker.lsp_references()
				end,
				nowait = true,
				desc = "References",
			},
			{
				"=",
				function()
					Snacks.picker.lsp_symbols()
				end,
				nowait = true,
				desc = "References",
			},
		},
	},
	{
		"chrisgrieser/nvim-origami",
		event = "VeryLazy",
		opts = {
			pauseFoldsOnSearch = false,
		}, -- needed even when using default config
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
	},
	{
		"kylechui/nvim-surround",
		event = "VeryLazy",
	},
	{
		"thinca/vim-qfreplace",
	},
	"tpope/vim-sleuth",
	{
		"andymass/vim-matchup",
		event = "BufRead",
	},
}
