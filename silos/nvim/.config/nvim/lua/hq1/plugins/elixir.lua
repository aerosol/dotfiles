return {
	{
		"elixir-editors/vim-elixir",
		config = function()
			vim.api.nvim_create_augroup("hq1_elixir_keys", { clear = true })
			vim.api.nvim_create_autocmd("FileType", {
				group = "hq1_elixir_keys",
				pattern = "elixir",
				callback = function()
					local opts = { noremap = true, silent = true }
					vim.keymap.set("i", "ii", "|> dbg()", { noremap = true })
				end,
			})
		end,
	},
}
