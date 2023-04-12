return {
	{
		"mcchrish/zenbones.nvim",
		dependencies = "rktjmp/lush.nvim",
		config = function()
			vim.g.hq1bones_transparent_background = true
			vim.cmd([[colorscheme hq1bones]])
		end,
	},
	{
		"numToStr/Comment.nvim",
		config = true,
	},
	{
		"aserowy/tmux.nvim",
		config = function()
			require("tmux").setup({
				copy_sync = {
					enable = false,
					redirect_to_clipboard = true,
					sync_clipboard = false,
					sync_unnamed = false,
				},
			})
		end,
	},
	"tpope/vim-sleuth",
	"andymass/vim-matchup",
	{
		"anuvyklack/windows.nvim",
		dependencies = {
			{ "anuvyklack/middleclass" },
			{ "anuvyklack/animation.nvim", enabled = false },
		},
		event = "WinNew",
		config = function()
			vim.o.winwidth = 5
			vim.o.winminwidth = 5
			vim.o.equalalways = false
			require("windows").setup({
				animation = {
					enable = false,
					duration = 150,
				},
			})
			vim.keymap.set("n", "<leader>Z", "<Cmd>WindowsMaximize<CR>")
		end,
	},
	"thinca/vim-qfreplace",

	{
		"brenoprata10/nvim-highlight-colors",
		config = function()
			require("nvim-highlight-colors").setup({})
		end,
	},
	"elixir-editors/vim-elixir",
	{
		"tversteeg/registers.nvim",
		config = function()
			require("registers").setup()
		end,
	},
	{
		"iamcco/markdown-preview.nvim",
		ft = "markdown",
		build = ":call mkdp#util#install()",
	},
}
