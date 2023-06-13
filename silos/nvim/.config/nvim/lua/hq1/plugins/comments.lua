return {
	"numToStr/Comment.nvim",
	config = function()
		require("Comment").setup({
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
