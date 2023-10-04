return {
	{
		"shortcuts/no-neck-pain.nvim",
		version = "*",
		config = function()
			local pain = require('no-neck-pain')
			local sideBufOpts = {
				enabled = true,
				bo = {
					filetype = "md",
					buftype = "nofile",
					bufhidden = "hide",
					buflisted = false,
					swapfile = false,
				}
			}
			pain.setup({
				width = 140,
				autocmds = {
					enableOnVimEnter = true,
					enableOnTabEnter = false,
					reloadOnColorSchemeChange = false,
				},
				mappings = {
					enabled = true

				},
				buffers = {
					left = sideBufOpts,
					right = sideBufOpts,
					scratchPad = {
						enabled = true,
						fileName = "SideNotes",
					},
				},


			})
		end
	},
	{
		'rlane/pounce.nvim',
		config = function()
			local pounce = require('pounce')
			pounce.setup({})
			local keymap = vim.keymap.set
			local opts = { noremap = true, silent = true }

			keymap("n", "s", function() pounce.pounce({}) end, opts)
			keymap("x", "s", function() pounce.pounce {} end)
			keymap("o", "gs", function() pounce.pounce {} end)
		end
	},
	{
		'declancm/cinnamon.nvim',
		config = function()
			require('cinnamon').setup({
				extra_keymaps = true

			})
		end
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {}, -- this is equalent to setup({}) function
	},
	{
		"kylechui/nvim-surround",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},
	"tpope/vim-sleuth",
	"andymass/vim-matchup",
	{
		"jinh0/eyeliner.nvim",
		config = function()
			require("eyeliner").setup({
				highlight_on_key = true, -- show highlights only after keypress
				dim = true,          -- dim all other characters if set to true (recommended!)
			})
		end,
	},
}
