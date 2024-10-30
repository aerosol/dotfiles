vim.g.mapleader = " "
vim.g.maplocalleader = " "

if vim.g.neovide then
	vim.o.guifont = "JetBrains Mono"
	vim.g.neovide_padding_top = 20
	vim.g.neovide_padding_bottom = 20
	vim.g.neovide_padding_right = 20
	vim.g.neovide_padding_left = 20
	vim.opt.linespace = 6
	vim.g.neovide_floating_shadow = true
	vim.g.neovide_floating_z_height = 10
	vim.g.neovide_light_angle_degrees = 45
	vim.g.neovide_light_radius = 5
	vim.g.neovide_cursor_animate_in_insert_mode = true
	vim.g.neovide_cursor_trail_size = 0.5
	vim.g.neovide_cursor_animation_length = 0.07
	vim.keymap.set('v', '<D-c>', '"+y')        -- Copy
	vim.keymap.set('c', '<D-v>', '<C-R>+')     -- Paste command mode
	vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode
end

require("hq1.lazy")
require("lazy").setup("hq1.plugins", {})
require("hq1.settings")
require("hq1.keys")
require("hq1.commands")
require("hq1.config.lsp")
