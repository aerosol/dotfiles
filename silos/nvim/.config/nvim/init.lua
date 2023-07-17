vim.g.mapleader = " "
vim.g.maplocalleader = " "

if vim.g.neovide then
	vim.o.guifont = "PragmataPro Liga:h24,JetBrainsMonoNL NF:h24"
	vim.g.neovide_padding_top = 20
	vim.g.neovide_padding_bottom = 20
	vim.g.neovide_padding_right = 20
	vim.g.neovide_padding_left = 20
	vim.opt.linespace = 6
	vim.g.neovide_cursor_vfx_mode = "pixeldust"
end

-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

require("hq1.lazy")
require("lazy").setup("hq1.plugins", {})
require("hq1.settings")
require("hq1.keys")
require("hq1.commands")
require("hq1.config.lsp")
