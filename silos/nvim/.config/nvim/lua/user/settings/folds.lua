vim.opt.foldlevelstart = 1
vim.opt.foldenable = true
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldmethod = "expr"
vim.opt.foldminlines = 4

function CustomFoldText()
	function Trim(s)
		return s:match("^%s*(.-)%s*$")
	end

	function TrimRight(s)
		return string.gsub(s, "%s*$", "")
	end

	local l1 = TrimRight(vim.fn.getline(vim.v.foldstart))

	if string.len(l1) > 40 then
		return l1
	else
		local s = require("plenary.strings")
		local l2 = s.truncate(Trim(vim.fn.getline(vim.v.foldstart + 1)), 20, nil, 1)
		local l3 = s.truncate(Trim(vim.fn.getline(vim.v.foldend)), 20, nil, 1)
		return l1 .. " ‥ " .. l2 .. " ‥ " .. l3
	end
end

vim.opt.foldtext = "v:lua.CustomFoldText()"
vim.opt.fillchars = "fold: ,foldopen:▾,foldsep: ,foldclose:▸"
vim.opt.foldnestmax = 2
vim.opt.foldcolumn = "auto:2"
