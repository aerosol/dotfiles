require("nvim-tree").setup({
	disable_netrw = false,
	git = {
		ignore = false,
	},
	renderer = {
		icons = {
			glyphs = {
				git = {
					ignored = "⊘",
				},
			},
		},
	},
})

vim.keymap.set("n", "-", ":NvimTreeFindFileToggle!<cr>")
