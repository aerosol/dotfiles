local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<leader>fed", "<cmd>:e ~/.config/nvim/init.lua<cr>", opts)

keymap("n", "<leader>fek", "<cmd>:e ~/.config/kitty/kitty.conf<cr>", opts)

keymap("n", "<leader>feb", "<cmd>:e ~/.config/bspwm/bspwmrc<cr>", opts)

keymap("n", "<leader>fes", "<cmd>:e ~/.config/sxhkd/sxhkdrc<cr>", opts)

keymap("n", "<leader>fez", "<cmd>:e ~/.zshrc<cr>", opts)

keymap("n", "<leader>fea", "<cmd>:e ~/.config/alacritty/alacritty.yml<cr>", opts)

keymap("n", "<leader>fep", "<cmd>:e ~/.config/polybar/config.ini<cr>", opts)
