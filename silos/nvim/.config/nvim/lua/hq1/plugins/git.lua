local keymap = vim.keymap.set
local opts = { noremap = true, silent = false }

return {
	{
		"akinsho/git-conflict.nvim",
		version = "*",
		config = function()
			require("git-conflict").setup({
				default_mappings = true, -- disable buffer local mapping created by this plugin
				default_commands = true, -- disable commands created by this plugin
				disable_diagnostics = false, -- This will disable the diagnostics in a buffer whilst it is conflicted
				highlights = {
					-- They must have background color, otherwise the default color will be used
					incoming = "DiffAdd",
					current = "DiffText",
				},
			})
		end,
	},
	{
		"sindrets/diffview.nvim",
		config = function()
			require("diffview").setup({})
			keymap("n", "gD", ":tab :DiffviewOpen<cr>:WindowsDisableAutowidth<cr>", opts)
		end,
	},
	{
		"tpope/vim-fugitive",
		config = function()
			keymap("n", "gs", ":tab :Git<cr>", opts)
			keymap("n", "gl", ":tab :Git log<cr>", opts)
			keymap("n", "gc", ":tab :Git commit<cr>", opts)
			keymap("n", "gI", ":Git rebase -i origin/", opts)
			keymap("n", "gC", ":Git rebase --continue", opts)
			keymap("n", "gA", ":Git rebase --abort", opts)
			keymap({ "n", "v" }, "gb", ":Git blame<cr>", opts)
			keymap({ "n", "v" }, "gB", ":GBrowse<cr>", opts)
		end,
	},
	"tpope/vim-rhubarb",
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				signs = {
					add = { text = "✚" },
					change = { text = "✎" },
					delete = { text = "✘" },
					topdelete = { text = "‾" },
					changedelete = { text = "✘" },
				},
			})
		end,
	},
}
