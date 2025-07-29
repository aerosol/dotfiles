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

function Statusline()
	local file_path = vim.fn.expand("%") ~= "" and vim.fn.expand("%:.") or "[No Name]"
	local file_name = vim.fn.expand("%:t") ~= "" and vim.fn.expand("%:t") or "[No Name]"
	local branch = vim.fn.FugitiveHead()
	local pos = vim.fn.line(".") .. ":" .. vim.fn.col(".")
	local progress = require("lsp-progress").progress()
	local mode = vim.api.nvim_get_mode().mode

	-- Use window width to determine which filename to show
	local width = vim.fn.winwidth(0)
	local file = width > 80 and file_path or file_name

	local parts = {
		"%#File#" .. file .. "%#Normal#",
		"%=",  -- right-align everything after this
		"%<",  -- truncation point
		"%#LineNr#" .. pos .. "%#Normal#",
		branch ~= "" and " %#Function#[" .. branch .. "]%#Normal#" or "",
		" %#Visual#" .. mode .. "%#Normal#",
		" %#Warning#" .. progress .. "%#Normal#",
	}

	return table.concat(parts, "")
end

vim.o.statusline = "%!v:lua.Statusline()"
