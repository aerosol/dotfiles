local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
keymap("n", "ss", ":update<cr>", opts)

keymap("n", "//", ":nohlsearch<cr>", opts)
keymap("n", "#", "*``", opts)

keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)

keymap("i", "jk", "<Esc>", opts)
keymap("i", "kj", "<Esc>", opts)

keymap("c", "<C-a>", "<home>", {})
keymap("c", "<C-e>", "<end>", {})

keymap("i", "%%", "<%= %><esc>F=a<space>", {})

keymap("n", "H", ":tabprevious<cr>", opts)
keymap("n", "L", ":tabnext<cr>", opts)

keymap("v", "y", "ygv<esc>", opts)
keymap("n", "p", "p=`]", opts)

keymap("n", "<leader>fed", "<cmd>:e ~/.config/nvim/lua/hq1<cr>", opts)
keymap("n", "<leader>few", "<cmd>:e ~/.config/waybar/<cr>", opts)
keymap("n", "<leader>feS", "<cmd>:e ~/.config/sway/config<cr>", opts)
keymap("n", "<leader>fez", "<cmd>:e ~/.zshrc<cr>", opts)
keymap("n", "<leader>fet", "<cmd>:e ~/.tmux.conf<cr>", opts)
keymap("n", "<leader>fef", "<cmd>:e ~/.config/foot/foot.ini<cr>", opts)

keymap("n", "<M-j>", "<cmd>:cnext<cr>", opts)
keymap("n", "<M-k>", "<cmd>:cprev<cr>", opts)

keymap("n", "<F12>", "<C-w>c", opts)

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "elixir", "markdown", "lua", "yaml" },
	callback = function()
		vim.api.nvim_buf_set_keymap(0, "n", "<CR>", "zR", { noremap = true, silent = true })
	end,
})

keymap({ "n", "x", "o" }, "<Leader>cc", "gcc", { remap = true })

keymap("n", "<leader>e", vim.diagnostic.open_float, opts)

keymap("n", "gF", function()
	local word = vim.fn.expand("<cfile>")
	local filename, lineno = string.match(word, "([^:]+):(%d+)")
	if filename and lineno then
		vim.cmd("tabedit " .. filename)
		vim.cmd(lineno)
	else
		vim.cmd("tabedit " .. word)
	end
	vim.opt.cmdheight = 2
end, { noremap = true, silent = true })

keymap("n", "<leader>cf", function()
	local buf_path = vim.api.nvim_buf_get_name(0)
	if buf_path == "" then
		vim.notify("No file associated with current buffer", vim.log.levels.WARN)
		return
	end
	local rel_path = vim.fn.fnamemodify(buf_path, ":~:.")
	vim.fn.setreg("+", rel_path)
	vim.notify("Copied relative path: " .. rel_path)
end, { desc = "Copy buffer relative path to clipboard" })

keymap("n", "ta", function()
	require("hq1.runner").run({ id = "TestPanel", cmd = "mix test --max-failures=1 --warnings-as-errors" })
end, opts)

keymap("n", "tf", function()
	local current_file = vim.fn.expand("%:p")
	require("hq1.runner").run({ id = "TestPanel", cmd = "mix test " .. current_file })
end, opts)

keymap("n", "tt", function()
	local current_file = vim.fn.expand("%:p")
	local current_line = vim.fn.line(".")
	local file_line = string.format("%s:%d", current_file, current_line)
	require("hq1.runner").run({ id = "TestPanel", cmd = "mix test " .. file_line })
end, opts)

keymap("n", "tl", function()
	require("hq1.runner").run_last("TestPanel")
end)

keymap("n", "<leader>r", function()
	local current_file = vim.fn.expand("%:p")
	require("hq1.runner").run({ id = current_file, cmd = current_file })
end)

keymap("n", "<C-e>", function()
	require("hq1.runner").run({ auto_resize = false })
end, opts)

keymap("n", "<leader>cx", "<cmd>:!chmod +x %<cr>", opts)
