local M = {
	last = {},
}

M.run_last = function(id)
	if M.last[id] then
		M.run(M.last[id])
	else
		print("No last command for " .. id)
	end
end

M.run = function(args)
	args = args or {}
	local current_file = vim.fn.expand("%:p")
	local cmd = args.cmd or current_file
	local id = args.id or current_file
	local auto_resize = true
	if args.auto_resize == nil then
		auto_resize = true
	else
		auto_resize = args.auto_resize
	end

	local name = "Runner:" .. id
	local bnr = vim.fn.bufnr(name)
	if bnr > 0 then
		vim.cmd("bdelete! " .. bnr)
	end
	vim.cmd("botright 10 new")
	print(cmd)
	vim.fn.termopen(cmd)
	vim.cmd("norm G")
	vim.cmd("file! " .. name)

	vim.api.nvim_create_autocmd({ "BufEnter" }, {
		buffer = 0,
		command = "let &titlestring = '" .. cmd .. "'",
	})

	vim.api.nvim_create_autocmd({ "BufLeave" }, {
		buffer = 0,
		command = "let &titlestring = '' | set title",
	})

	if auto_resize then
		vim.api.nvim_create_autocmd({ "BufEnter" }, {
			buffer = 0,
			command = "wincmd _",
		})

		vim.api.nvim_create_autocmd({ "BufLeave" }, {
			buffer = 0,
			command = "resize 10",
		})
	end

	vim.cmd("wincmd p")

	M.last[id] = args
end

return M