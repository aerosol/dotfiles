return {
	"aserowy/tmux.nvim",
	config = function()
		require("tmux").setup({
			copy_sync = {
				enable = false,
				redirect_to_clipboard = true,
				sync_clipboard = false,
				sync_unnamed = false,
			},
		})
	end,
}
