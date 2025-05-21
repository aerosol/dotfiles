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
			picker = { enabled = true, 
			sources = {
				buffers = {
					current = false,
					layout = "vscode"
				}
			} },
		},
		keys = {
			{ "<leader><leader>", function() Snacks.picker.buffers() end, desc = "Buffers" },
			{ "<leader>l", function() Snacks.picker.grep() end, desc = "Grep" },
			{ "<leader>L", function() Snacks.picker.grep({ignored=true}) end, desc = "Grep all" },
			{ "go", function() Snacks.picker.files() end, desc = "Find Files" },
			{ "gO", function() Snacks.picker.files({ignored=true}) end, desc = "Find All Files" },
			{ "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
			{ "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
			{ "=", function() Snacks.picker.lsp_symbols() end, nowait = true, desc = "References" },
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
		'aaronik/treewalker.nvim',

		-- The following options are the defaults.
		-- Treewalker aims for sane defaults, so these are each individually optional,
		-- and setup() does not need to be called, so the whole opts block is optional as well.
		opts = {
			-- Whether to briefly highlight the node after jumping to it
			highlight = true,

			-- How long should above highlight last (in ms)
			highlight_duration = 250,

			-- The color of the above highlight. Must be a valid vim highlight group.
			-- (see :h highlight-group for options)
			highlight_group = 'CursorLine',

			-- Whether the plugin adds movements to the jumplist -- true | false | 'left'
			--  true: All movements more than 1 line are added to the jumplist. This is the default,
			--        and is meant to cover most use cases. It's modeled on how { and } natively add
			--        to the jumplist.
			--  false: Treewalker does not add to the jumplist at all
			--  "left": Treewalker only adds :Treewalker Left to the jumplist. This is usually the most
			--          likely one to be confusing, so it has its own mode.
			jumplist = true,
		}
}
}
