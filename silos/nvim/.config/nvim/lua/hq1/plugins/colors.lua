return {
	{
		"Tsuzat/NeoSolarized.nvim",
		config = function()
			require("NeoSolarized").setup({
				transparent = true,
				on_highlights = function(highlights, colors)
					highlights.Folded.bg = nil
					highlights.Folded.fg = blue
					highlights.Pmenu = { bg = "#0E1A0F" }
					highlights.NormalFloat = { bg = "#0E1A0F" }

					highlights.DiffAdd = { bg = "#081F10" }
					highlights.DiffChange = { bg = "#0E1A0F" }
					highlights.DiffDelete = { bg = "#2F0505" }
					highlights.DiffText = { bg = "#0E1A0F" }
					-- highlights.diffAdded = { fg = c.green }
					-- highlights.diffRemoved = { fg = c.red }
					-- highlights.diffChanged = { fg = c.blue }
					-- highlights.diffOldFile = { fg = c.yellow }
					-- highlights.diffNewFile = { fg = c.orange }
					-- highlights.diffFile = { fg = c.aqua }
					-- highlights.diffLine = { fg = c.base1 }
					-- highlights.diffIndexLine = { fg = c.purple }
				end,
			})
			vim.cmd("colorscheme NeoSolarized")
		end,
	},
}
