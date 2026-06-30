return {
	-- {
	-- 	"EggbertFluffle/beepboop.nvim",
	-- 	opts = {
	-- 		theme = "https://github.com/EggbertFluffle/mingleburb.beepboop",
	-- 	},
	-- },
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			bigfile = { enabled = true },
			notifier = { enabled = true },
			quickfile = { enabled = true },
			statuscolumn = { enabled = true },
			-- indent = { enabled = true },
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
					Snacks.picker.grep({ ignored = true, hidden = true })
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
					Snacks.picker.files({ ignored = true, hidden = true })
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
	{
		"sphamba/smear-cursor.nvim",

		opts = {

			-- time_interval = 7, -- milliseconds
			stiffness = 0.8, -- 0.6      [0, 1]
			trailing_stiffness = 0.6, -- 0.45     [0, 1]
			stiffness_insert_mode = 0.7, -- 0.5      [0, 1]
			trailing_stiffness_insert_mode = 0.7, -- 0.5      [0, 1]
			damping = 0.95, -- 0.85     [0, 1]
			damping_insert_mode = 0.95, -- 0.9      [0, 1]
			distance_stop_animating = 0.5, -- 0.1      > 0
			-- Smear cursor when switching buffers or windows.
			smear_between_buffers = true,

			-- Smear cursor when moving within line or to neighbor lines.
			-- Use `min_horizontal_distance_smear` and `min_vertical_distance_smear` for finer control
			smear_between_neighbor_lines = true,

			-- Draw the smear in buffer space instead of screen space when scrolling
			scroll_buffer_space = false,

			-- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
			-- Smears will blend better on all backgrounds.
			legacy_computing_symbols_support = false,

			-- Smear cursor in insert mode.
			-- See also `vertical_bar_cursor_insert_mode` and `distance_stop_animating_vertical_bar`.
			smear_insert_mode = false,
		},
	},
	-- { "nvim-mini/mini.cursorword", version = false, config = true },
}
