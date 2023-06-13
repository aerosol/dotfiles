return {
	"numToStr/Comment.nvim",
	config = function()
		require("Comment").setup({
			mappings = { basic = true, extra = false },
			ignore = "^$",
			toggler = {
				line = "<leader>cc",
				block = "<leader>bc",
			},
			opleader = {
				line = "<leader>cc",
				block = "<leader>bc",
			},
		})
	end,
}
