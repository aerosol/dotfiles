return {
	"aymericbeaumet/vim-symlink",
	"elihunter173/dirbuf.nvim",
	config = function()
		require("dirbuf").setup({
			hash_padding = 2,
			sort_order = "directories_first",
		})
	end,
}
