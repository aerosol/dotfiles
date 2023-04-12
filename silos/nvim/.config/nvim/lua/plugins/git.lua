return {
	{
		"tpope/vim-fugitive",
		config = function()
			local keymap = vim.keymap.set
			local opts = { noremap = true, silent = true }

			keymap("n", "gs", ":tab :Git<cr>", opts)
			keymap("n", "gl", ":tab :Git log<cr>", opts)
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
