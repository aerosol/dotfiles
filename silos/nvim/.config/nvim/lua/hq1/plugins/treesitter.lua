return {
	{
		"stevearc/aerial.nvim",
		config = function()
			require('aerial').setup({
				-- optionally use on_attach to set keymaps when aerial has attached to a buffer
			})
			-- You probably also want to set a keymap to toggle aerial
			vim.keymap.set('n', '=', '<cmd>AerialToggle!<CR>')
		end,

	},
	{
		"nvim-treesitter/nvim-treesitter",
		run = function()
			pcall(require("nvim-treesitter.install").update({ with_sync = true }))
		end,
		config = function()
			require("hq1.config.treesitter")
		end,
	},
	{
		"nvim-treesitter/playground",
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		dependencies = "nvim-treesitter",
	},
	{
		"RRethy/nvim-treesitter-endwise",
		dependencies = "nvim-treesitter",
	},
}
