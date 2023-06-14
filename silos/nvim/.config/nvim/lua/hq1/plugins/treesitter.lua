return {
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
