vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("user.lazy")

require("user.settings")
require("user.settings.folds")
require("user.keys")
require("user.keys.dots")
require("user.commands")

require("user.config.git")
require("user.config.lsp")
require("user.config.nvim-tree")
require("user.config.treesitter")
