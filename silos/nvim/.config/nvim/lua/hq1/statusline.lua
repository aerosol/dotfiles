local M = {}

function M.get_filename()
	local buf_name = vim.api.nvim_buf_get_name(0)
	local file_path = buf_name ~= "" and vim.fn.fnamemodify(buf_name, ":.") or "[No Name]"
	local file_name = buf_name ~= "" and vim.fn.fnamemodify(buf_name, ":t") or "[No Name]"

	-- Use window width to determine which filename to show
	local width = vim.fn.winwidth(0)
	return width > 80 and file_path or file_name
end

function M.get_position()
	return vim.fn.line(".") .. ":" .. vim.fn.col(".")
end

function M.get_branch()
	local branch = vim.fn.FugitiveHead()
	return branch ~= "" and " %#Function#[" .. branch .. "]%#Normal#" or ""
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
	"%#File#%{%v:lua.Statusline_filename()%}%#Normal#%=%<%#LineNr#%{%v:lua.Statusline_position()%}%#Normal#%{%v:lua.Statusline_branch()%} %#Visual#%{%v:lua.Statusline_mode()%}%#Normal# %#Warning#%{%v:lua.Statusline_progress()%}%#Normal#"
return M

