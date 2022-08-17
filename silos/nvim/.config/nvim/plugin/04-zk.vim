lua << EOF
require("zk").setup({
  picker = "fzf",
  lsp = {
    config = {
      cmd = { "zk", "lsp" },
      name = "zk"
    },
    auto_attach = {
      enabled = true,
      filetypes = { "markdown" },
    },
  },
})

local function map(...) vim.api.nvim_buf_set_keymap(0, ...) end
local opts = { noremap=true, silent=false }

-- Create a new note after asking for its title.
map("n", "<leader>zn", "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>", opts)
-- Open notes.
map("n", "<leader>zo", "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", opts)
-- Open notes associated with the selected tags.
-- map("n", "<leader>zt", "<Cmd>ZkTags<CR>", opts)
-- Search for the notes matching a given query.
--vim.api.nvim_set_keymap("n", "<leader>nl", "<Cmd>ZkNotes { sort = { 'modified' }, match = vim.fn.input('Search: ') }<CR>", opts)
-- Search for the notes matching the current visual selection.
--vim.api.nvim_set_keymap("v", "<leader>zf", ":'<,'>ZkMatch<CR>", opts)
--
map("v", "<leader>zt", ":'<,'>ZkNewFromTitleSelection<CR>", opts)
map("v", "<leader>zc", ":'<,'>ZkNewFromContentSelection { title = vim.fn.input('Title: ') }<CR>", opts)

