-- create directories when needed, when saving a file
vim.api.nvim_create_autocmd("BufWritePre", {
	group = vim.api.nvim_create_augroup("auto_create_dir", { clear = true }),
	callback = function(event)
		local file = vim.loop.fs_realpath(event.match) or event.match

		vim.fn.mkdir(vim.fn.fnamemodify(file, ":p:h"), "p")
		local backup = vim.fn.fnamemodify(file, ":p:~:h")
		backup = backup:gsub("[/\\]", "%%")
		vim.go.backupext = backup
	end,
})

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
	end
})
