return {
	"nvim-treesitter/nvim-treesitter",
	version = false,
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	-- config = function()
	-- 	require("nvim-treesitter.configs").setup({
	-- 		sync_install = false,
	-- 		modules = {},
	-- 		highlight = {
	-- 			enable = true,
	-- 			additional_vim_regex_highlighting = false,
	-- 		},
	-- 		endwise = {
	-- 			enable = true,
	-- 		},
	-- 		indent = { enable = true },
	-- 		auto_install = false,
	-- 		ensure_installed = {
	-- 			"bash",
	-- 			"c",
	-- 			"html",
	-- 			"javascript",
	-- 			"json",
	-- 			"lua",
	-- 			"luadoc",
	-- 			"luap",
	-- 			"query",
	-- 			"regex",
	-- 			"vim",
	-- 			"vimdoc",
	-- 			"yaml",
	-- 			"rust",
	-- 			"go",
	-- 			"gomod",
	-- 			"gowork",
	-- 			"gosum",
	-- 		},
	-- 	})
	-- end,
}
