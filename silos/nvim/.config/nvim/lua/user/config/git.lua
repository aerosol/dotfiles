local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "gs", ":Git<cr>", opts)
keymap({ "n", "v" }, "gb", ":Git blame<cr>", opts)
keymap({ "n", "v" }, "gB", ":GBrowse<cr>", opts)
