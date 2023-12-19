local M = {
	last = {}
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
		command = "let &titlestring = '" .. cmd .. "'"
	})

	vim.api.nvim_create_autocmd({ "BufLeave" }, {
		buffer = 0,
		command = "let &titlestring = '' | set title"
	})

	if auto_resize then
		vim.api.nvim_create_autocmd({ "BufEnter" }, {
			buffer = 0,
			command = "wincmd _"
		})

		vim.api.nvim_create_autocmd({ "BufLeave" }, {
			buffer = 0,
			command = "resize 10"
		})
	end

	vim.cmd("wincmd p")

	M.last[id] = args
end

M.set_keymaps = function()
	local keymap = vim.keymap.set
	local opts = { noremap = true, silent = true }

	keymap("n", "ta", function()
		M.run({ id = "TestPanel", cmd = "mix test --max-failures=1 --warnings-as-errors" })
	end, opts)

	keymap("n", "tf", function()
		local current_file = vim.fn.expand("%:p")
		M.run({ id = "TestPanel", cmd = "mix test " .. current_file })
	end, opts)

	keymap("n", "tt", function()
		local current_file = vim.fn.expand("%:p")
		local current_line = vim.fn.line('.')
		local file_line = string.format("%s:%d", current_file, current_line)
		M.run({ id = "TestPanel", cmd = "mix test " .. file_line })
	end, opts)

	keymap("n", "tl", function()
		M.run_last("TestPanel")
	end)

	keymap("n", "<leader>r", function()
		local current_file = vim.fn.expand("%:p")
		M.run({ id = current_file, cmd = current_file })
	end)

	keymap("n", "<C-e>", function() M.run({ auto_resize = false }) end, opts)
	keymap("n", "<leader>cx", "<cmd>:!chmod +x %<cr>", opts)
end

return M
