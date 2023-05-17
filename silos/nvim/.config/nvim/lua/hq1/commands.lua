-- go to last loc when opening a buffer
vim.api.nvim_create_autocmd("BufReadPre", {
	pattern = "*",
	callback = function()
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "<buffer>",
			once = true,
			callback = function()
				vim.cmd(
					[[if &ft !~# 'commit\|rebase' && line("'\"") > 1 && line("'\"") <= line("$") | exe 'normal! g`"' | endif]]
				)
			end,
		})
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*",
	callback = function()
		vim.opt.formatoptions = vim.opt.formatoptions
			- "a" -- No auto formatting
			- "t" -- No auto-wrapping
			+ "c" -- comments respect textwidth
			+ "q" -- Allow formatting comments w/ gq
			- "o" -- O and o, don't continue comments
			+ "r" -- But do continue when pressing enter.
			+ "n" -- Indent past the formatlistpat, not underneath it.
			+ "j" -- Allow joining multi-line comments
			- "2" -- No paragraph idents
	end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function()
		if vim.lsp.buf.server_ready() then
			vim.lsp.buf.format()
		end
	end,
})
