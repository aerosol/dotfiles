return {
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require('nvim-ts-autotag').setup({
				aliases = {
					["elixir"] = "html",
					["heex"] = "html",
					["eex"] = "html",
				}
			})
		end
	}
}
