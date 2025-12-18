local M = {}

function M.get_filename()
	local buf_name = vim.api.nvim_buf_get_name(0)
	local file_path = buf_name ~= "" and vim.fn.fnamemodify(buf_name, ":.") or "[No Name]"
	local file_name = buf_name ~= "" and vim.fn.fnamemodify(buf_name, ":t") or "[No Name]"

	local width = vim.fn.winwidth(0)

	if width > 80 then
		if buf_name ~= "" then
			local parent = vim.fn.fnamemodify(buf_name, ":h:t")
			local fname = vim.fn.fnamemodify(buf_name, ":t")
			return parent ~= "" and (parent .. "/" .. fname) or fname
		else
			return "[No Name]"
		end
	else
		return file_name
	end
end

function M.get_position()
	return vim.fn.line(".") .. ":" .. vim.fn.col(".")
end

function M.get_branch()
	local branch = vim.fn.FugitiveHead()
	return branch ~= "" and "[" .. branch .. "]" or ""
end

function M.get_mode()
	return vim.api.nvim_get_mode().mode
end

function M.get_progress()
	return require("lsp-progress").progress()
end

function Statusline_filename()
	return require("hq1.statusline").get_filename()
end

function Statusline_position()
	return require("hq1.statusline").get_position()
end

function Statusline_branch()
	return require("hq1.statusline").get_branch()
end

function Statusline_mode()
	return require("hq1.statusline").get_mode()
end

function Statusline_progress()
	return require("hq1.statusline").get_progress()
end

vim.o.statusline =
	"%{%v:lua.Statusline_filename()%}%=%<%{%v:lua.Statusline_position()%}%{%v:lua.Statusline_branch()%} %{%v:lua.Statusline_mode()%} %{%v:lua.Statusline_progress()%} %{%v:lua.require'exunit'.statusline()%}"
return M
