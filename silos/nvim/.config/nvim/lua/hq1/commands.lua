-- go to last loc when opening a buffer

vim.api.nvim_create_autocmd("BufReadPost", {
	pattern = "git-rebase-todo",
	callback = function()
		vim.cmd([[:silent %!git-rb]])
	end,
})

vim.api.nvim_create_autocmd("BufReadPost", {
	pattern = "*",
	callback = function()
		vim.cmd("set showtabline=1")
	end,
})

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

vim.api.nvim_create_autocmd({ "FocusLost" }, {
	pattern = "*",
	callback = function()
		if not vim.bo.readonly and vim.fn.expand("%") ~= "" and vim.bo.buftype == "" then
			vim.api.nvim_command("update")
		end
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*",
	callback = function()
		vim.opt.formatoptions = vim.opt.formatoptions
			- "a" -- No auto formatting
			+ "t" -- Auto-wrapping
			+ "c" -- comments respect textwidth
			- "q" -- Allow formatting comments w/ gq
			- "o" -- O and o, don't continue comments
			+ "r" -- But do continue when pressing enter.
			+ "n" -- Indent past the formatlistpat, not underneath it.
			+ "j" -- Allow joining multi-line comments
			- "2" -- No paragraph idents
	end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
})

-- vim.api.nvim_create_autocmd("BufWritePre", {
-- 	pattern = "*",
-- 	callback = function()
-- 		if vim.lsp.buf.server_ready() then
-- 			vim.lsp.buf.format()
-- 		end
-- 	end,
-- })
