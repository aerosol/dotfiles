vim.g.editorconfig = false
vim.opt.shortmess:append("I")
vim.opt.cursorline = false
vim.opt.cursorcolumn = false
vim.opt.breakindent = true
vim.opt.clipboard = "unnamedplus"
vim.opt.cmdheight = 2
vim.opt.expandtab = false
vim.opt.ignorecase = true
vim.opt.inccommand = "nosplit"
vim.opt.joinspaces = false
vim.opt.number = true
vim.opt.scrolloff = 999
vim.opt.shiftwidth = 2
vim.opt.smartcase = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.tabstop = 2
vim.opt.termguicolors = true
vim.opt.timeoutlen = 300
vim.opt.undofile = true
vim.opt.undolevels = 5000
vim.opt.updatetime = 200
vim.opt.wrap = true
vim.opt.ttimeoutlen = 10
vim.opt.timeout = false
vim.opt.spell = true
vim.opt.title = true
vim.opt.titlestring = "%{expand('%:~:.')}"
vim.opt.fillchars = {
	horiz = "━",
	horizup = "┻",
	horizdown = "┳",
	vert = "┃",
	vertleft = "┫",
	vertright = "┣",
	verthoriz = "╋",
	eob = " ",
	fold = " ",
}
vim.opt.guicursor = "n:blinkon1"
vim.wo.foldmethod = "expr"
vim.wo.foldminlines = 3
vim.wo.foldenable = true
vim.wo.foldnestmax = 3
vim.o.foldlevel = 99
vim.wo.foldlevel = 99
vim.o.foldlevelstart = 1
vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.wo.foldtext = ""
vim.o.laststatus = 2
vim.o.showcmd = false
vim.opt.showmode = false

local function shorten_path(path)
	local sep = package.config:sub(1, 1)
	local parts = {}
	for part in string.gmatch(path, "[^" .. sep .. "]+") do
		table.insert(parts, part)
	end
	for i = 1, #parts - 1 do
		parts[i] = parts[i]:sub(1, 1)
	end
	return table.concat(parts, sep)
end

local function filename_with_short_path()
	local filepath = vim.fn.expand("%:.")
	if filepath == "" then
		return "[No Name]"
	end
	return shorten_path(filepath)
end

local function fugitive_branch()
	local branch = vim.fn.FugitiveHead()
	if branch == "" then
		return ""
	else
		return " " .. branch
	end
end

function Statusline()
	local file = filename_with_short_path()
	local branch = fugitive_branch()
	local line = vim.fn.line(".")
	local col = vim.fn.col(".")
	local pos = string.format("%d:%d", line, col)
	local progress = require("lsp-progress").progress()
	local mode = vim.api.nvim_get_mode().mode

	local hl_file = "%#File#"
	local hl_branch = "%#Function#"
	local hl_pos = "%#LineNr#"
	local hl_mode = "%#Visual#"
	local hl_progress = "%#Warning#"
	local hl_reset = "%#Normal#"

	local branch_str = branch ~= "" and (hl_branch .. " [" .. branch .. "]" .. hl_reset) or ""

	return table.concat({
		hl_file .. file .. hl_reset,
		hl_pos .. pos .. hl_reset,
		branch_str,
		hl_mode .. mode .. hl_reset,
		hl_progress .. progress .. hl_reset,
	}, " ")
end

vim.o.statusline = "%!v:lua.Statusline()"
