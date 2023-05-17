vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

require("hq1.lazy")
require("lazy").setup("hq1.plugins", {})
require("hq1.settings")
require("hq1.keys")
require("hq1.commands")
require("hq1.config.lsp")
