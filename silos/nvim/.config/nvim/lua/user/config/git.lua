local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "gs", ":tab :Git<cr>", opts)
keymap("n", "gl", ":tab :Git log<cr>", opts)
keymap({ "n", "v" }, "gb", ":Git blame<cr>", opts)
keymap({ "n", "v" }, "gB", ":GBrowse<cr>", opts)
