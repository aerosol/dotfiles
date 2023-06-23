return {
	{
		"levouh/tint.nvim",
		config = function()
			require("tint").setup({
				highlight_ignore_patterns = { "WinSeparator", "Status.*" }, -- Highlight group patterns to ignore, see `string.find`
				window_ignore_function = function(winid)
					local bufid = vim.api.nvim_win_get_buf(winid)
					local buftype = vim.api.nvim_buf_get_option(bufid, "buftype")
					local floating = vim.api.nvim_win_get_config(winid).relative ~= ""

					-- Do not tint `terminal` or floating windows, tint everything else
					return buftype == "terminal" or floating
				end,
			})
		end,
	},
	{
		"Tsuzat/NeoSolarized.nvim",
		config = function()
			require("NeoSolarized").setup({
				transparent = true,
				on_highlights = function(highlights, _colors)
					highlights.Folded.bg = nil
					highlights.Folded.fg = "blue"
					highlights.Pmenu = { bg = "#0E1A0F" }
					highlights.NormalFloat = { bg = "#0E1A0F" }
					highlights.WinbarBreadcrumb = { italic = true, fg = "#999999", bg = "#141819" }
					highlights.WinbarBreadcrumbEm = { italic = true, fg = "#dddddd", bg = "#141819", underline = true }
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
