function RunIt(id)
	local current_file = vim.fn.expand("%:p")
	local name = "RunIt:" .. id
	local bnr = vim.fn.bufnr(name)
	if bnr > 0 then
		vim.cmd("bdelete! " .. bnr)
	end
	vim.cmd("botright 10 new")
	vim.fn.termopen(current_file)
	vim.cmd("norm G")
	vim.cmd("file! " .. name)
end
