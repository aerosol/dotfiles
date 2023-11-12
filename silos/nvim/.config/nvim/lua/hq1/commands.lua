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
