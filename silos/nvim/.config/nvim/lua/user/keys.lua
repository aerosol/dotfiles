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

keymap("n", "<C-p>", "za", opts)

keymap("c", "<C-a>", "<home>", {})
keymap("c", "<C-e>", "<end>", {})

keymap("i", "ii", "|> IO.inspect(label: :)<Left>", {})

keymap("n", "H", ":tabprevious<cr>", opts)
keymap("n", "L", ":tabnext<cr>", opts)

keymap("n", "<Bs>", ":close<cr>", opts)

keymap("n", "-", ":Fern %:p:h -reveal=%:p<cr>", opts)
