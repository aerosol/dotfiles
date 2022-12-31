local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "gs", ":Git<cr>", opts)
keymap("n", "gb", ":Git blame<cr>", opts)
keymap("n", "gB", ":GBrowse<cr>", opts)
