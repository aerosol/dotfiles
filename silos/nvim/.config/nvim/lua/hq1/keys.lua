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
	pattern = { "elixir", "markdown", "lua" },
	callback = function()
		vim.api.nvim_buf_set_keymap(0, "n", "<CR>", "zR", { noremap = true, silent = true })
	end,
})

keymap("n", "<leader>cf", "<cmd>:set ft=sql|%!clickhouse-format 2>/dev/null<cr>", opts)
keymap({ 'n', 'x', 'o' }, '<Leader>cc', 'gcc', { remap = true })

require('hq1.experimental').set_keymaps()
