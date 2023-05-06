local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("n", "ss", ":update<cr>", opts)

keymap("n", "//", ":nohlsearch<cr>", opts)
keymap("n", "#", "*``", opts)
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)

keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)

keymap("i", "jk", "<Esc>", opts)

keymap("n", "<C-p>", "za", opts)

keymap("c", "<C-a>", "<home>", {})
keymap("c", "<C-e>", "<end>", {})

keymap("i", "ii", "|> IO.inspect(label: :)<Left>", {})

keymap("n", "H", ":tabprevious<cr>", opts)
keymap("n", "L", ":tabnext<cr>", opts)

keymap("n", "<Bs>", ":close<cr>", opts)

keymap("n", "<leader>fed", "<cmd>:e ~/.config/nvim/init.lua<cr>", opts)
keymap("n", "<leader>fek", "<cmd>:e ~/.config/kitty/kitty.conf<cr>", opts)
keymap("n", "<leader>feb", "<cmd>:e ~/.config/bspwm/bspwmrc<cr>", opts)
keymap("n", "<leader>fes", "<cmd>:e ~/.config/sxhkd/sxhkdrc<cr>", opts)
keymap("n", "<leader>fez", "<cmd>:e ~/.zshrc<cr>", opts)
keymap("n", "<leader>fea", "<cmd>:e ~/.config/alacritty/alacritty.yml<cr>", opts)
keymap("n", "<leader>fep", "<cmd>:e ~/.config/polybar/config.ini<cr>", opts)
keymap("n", "<leader>fet", "<cmd>:e ~/.tmux.conf<cr>", opts)
