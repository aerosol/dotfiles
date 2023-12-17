return {
	{
		"stevearc/oil.nvim",
		config = function()
			vim.g.loaded_fzf_file_explorer = 1
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1
			require("oil").setup({
				default_file_explorer = true,
				keymaps = {
					["<CR>"] = "actions.select",
					["-"] = "actions.parent",
					["_"] = "actions.open_cwd",
					["g."] = "actions.cd",
					["gh"] = "actions.toggle_hidden",
				},
				columns = {
					"icon",
					"permissions",
					"size",
					"mtime",
				},
				win_options = {
					cursorcolumn = true,
				},
				use_default_keymaps = false,
				view_options = {
					show_hidden = true,
				},
			})
			vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
		end,
	},
}
