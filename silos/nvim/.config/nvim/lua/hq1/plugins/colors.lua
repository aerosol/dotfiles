return {
	-- lazy.nvim
	{
		"kungfusheep/mfd.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme mfd-stealth")
		end,
	},
	{
		"misaelvillaverde/acme.nvim",
		dependencies = "rktjmp/lush.nvim",
		priority = 1000,
	},
	{
		"miikanissi/modus-themes.nvim",
		priority = 1000,
		config = function()
			require("modus-themes").setup({
				transparent = true,
				on_highlights = function(highlights, colors)
					highlights.MiniCursorword = { underline = true, bg = "#ffffdd" }
					highlights.MiniCursorwordCurrent = { underline = true, bg = "#ffffdd" }
				end,
			})
		end,
	},
	{
		"Tsuzat/NeoSolarized.nvim",
		priority = 1000,
		config = function()
			-- vim.o.background = "dark"
			local neovide = vim.g.neovide
			local colors = require("NeoSolarized.colors")
			colors.dark.bg0 = "#0a0a0a"
			colors.dark.bg1 = "#303238"

			require("NeoSolarized").setup({
				transparent = true,
				enable_italics = not neovide,
				styles = {
					-- Style to be applied to different syntax groups
					comments = { italic = not neovide },
					keywords = { italic = not neovide },
					functions = { bold = true },
					variables = {},
					string = { italic = not neovide },
					underline = true, -- true/false; for global underline
					undercurl = true, -- true/false; for global undercurl
				},
				on_highlights = function(highlights, _colors)
					highlights.MiniCursorword = { underline = true }
					highlights.MiniCursorwordCurrent = { underline = true }
					highlights.StatusLine = { bg = "#222222" }
					highlights.StatusLineNC = { bg = "#171717" }
					highlights.OilFile = { fg = "#657b83", italic = not neovide }
					highlights.OilDir = { fg = "#b59909", italic = not neovide }
					highlights.fugitiveHash = { italic = not neovide }
					highlights.fugitiveUnstagedSection = { italic = not neovide, fg = "#005200" }
					highlights.fugitiveUntrackedSection = { italic = not neovide, fg = "#666666" }
					highlights.fugitiveStagedSection = { italic = not neovide, fg = "#008800" }
					highlights.Pmenu = { bg = "#141819" }
					highlights.NormalFloat = { bg = "#141819" }
					highlights.WinbarBreadcrumb = { italic = not neovide, fg = "#999999", bg = "#141819" }
					highlights.WinbarBreadcrumbEm =
						{ italic = true, fg = "#dddddd", bg = "#141819", underline = not neovide }
					highlights.DiffAdd = { bg = "#081F10" }
					highlights.DiffChange = { bg = "#0E1A0F" }
					highlights.DiffDelete = { bg = "#2F0505" }
					highlights.DiffText = { bg = "#0E1A0F" }
					highlights.PounceAcceptBest = { bg = "#008800", fg = "#ffffff", underline = true }
					highlights.PounceAccept = { bg = "#004200", fg = "#ffffff", underline = true }
					highlights.PounceMatch = { bg = "#002200", fg = "#ffffff" }
					highlights.DiagnosticVirtualTextError = { fg = "#6f0000" }
					highlights.Search = { bg = "#223333" }
				end,
			})
			vim.cmd("colorscheme NeoSolarized")
		end,
	},
}
