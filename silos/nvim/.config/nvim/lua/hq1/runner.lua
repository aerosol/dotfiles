local M = {
	last = {},
	current_job = nil,
	last_status = nil,
}

function M.status()
	if M.current_job and M.current_job.running then
		return {
			running = true,
			exit_code = nil,
			cmd = M.current_job.cmd,
			id = M.current_job.id,
		}
	elseif M.last_status then
		return {
			running = false,
			exit_code = M.last_status.code,
			cmd = M.last_status.cmd,
			id = M.last_status.id,
		}
	else
		return {
			running = false,
			exit_code = nil,
			cmd = nil,
			id = nil,
		}
	end
end

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

	local name = "Runner:" .. id
	local bnr = vim.fn.bufnr(name)
	if bnr > 0 then
		for _, tabnr in ipairs(vim.api.nvim_list_tabpages()) do
			local wins = vim.api.nvim_tabpage_list_wins(tabnr)
			for _, win in ipairs(wins) do
				if vim.api.nvim_win_get_buf(win) == bnr then
					vim.api.nvim_set_current_tabpage(tabnr)
					vim.api.nvim_set_current_win(win)
					vim.cmd("tabclose")
					break
				end
			end
		end
		vim.cmd("bdelete! " .. bnr)
	end
	vim.cmd("tabnew")

	print(cmd)

	M.current_job = {
		running = true,
		cmd = cmd,
		id = id,
	}

	local function on_exit(_, code, _)
		M.current_job.running = false
		M.last_status = {
			code = code,
			cmd = cmd,
			id = id,
		}
		vim.notify(string.format("Job exited with: %d", code), vim.log.levels.INFO)
	end

	vim.notify(cmd, vim.log.levels.INFO)
	vim.fn.jobstart(cmd, { term = true, on_exit = on_exit })
	vim.cmd("file! " .. name)

	vim.cmd("tabprev")

	M.last[id] = args
end

return M
