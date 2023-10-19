return { "elixir-editors/vim-elixir",

	{
		"elixir-tools/elixir-tools.nvim",
		version = "*",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local elixir = require("elixir")
			local elixirls = require("elixir.elixirls")

			elixir.setup {
				nextls = {
					enable = true,

					on_attach = require 'hq1.config.lsp'.on_attach
				},
				credo = {},
				elixirls = {
					enable = false,
				}
			}
		end,
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	}
}
