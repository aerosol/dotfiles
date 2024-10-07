return {
	{
		"slugbyte/lackluster.nvim",
		lazy = false,
		priority = 1000,
		init = function()
			local lackluster = require("lackluster")
			lackluster.setup({
				-- tweak_highlight allows you to update or overwrite the value passed into
				-- vim.api.nvim_set_hl which allows you to have complete control over modifying all
				-- highlights on a granular level.
				tweak_highlight = {
					-- modify @keyword's highlights to be bold and italic
					["@keyword"] = {
						italic = true,
						-- see `:help nvim_set_hl` for all possible keys
					},
					["@string.special"] = {
						italic = true,
						-- see `:help nvim_set_hl` for all possible keys
					},
					["MatchParenCur"] = {
						italic = true,
						fg = "#00ac00",
						bg = nil,
						overwrite = true,
						-- see `:help nvim_set_hl` for all possible keys
					},
					["MatchParen"] = {
						italic = true,
						fg = "#009900",
						bg = nil,
						overwrite = true,
						-- see `:help nvim_set_hl` for all possible keys
					},
					["@constant"] = {
						italic = true,
						-- see `:help nvim_set_hl` for all possible keys
					},
					["@string"] = {
						italic = true,
						-- see `:help nvim_set_hl` for all possible keys
					},
				},
			})
			vim.cmd.colorscheme("lackluster")
			-- vim.cmd.colorscheme("lackluster-hack") -- my favorite
			-- vim.cmd.colorscheme("lackluster-mint")
		end,

	},
	{
		"yorumicolors/yorumi.nvim"
	},
	-- {
	-- 	"levouh/tint.nvim",
	-- 	config = function()
	-- 		require("tint").setup({
	-- 			saturation = 0.9,                                       -- Saturation to preserve
	-- 			highlight_ignore_patterns = { "WinSeparator", "Status.*" }, -- Highlight group patterns to ignore, see `string.find`
	-- 			window_ignore_function = function(winid)
	-- 				local bufid = vim.api.nvim_win_get_buf(winid)
	-- 				local buftype = vim.api.nvim_buf_get_option(bufid, "buftype")
	-- 				local floating = vim.api.nvim_win_get_config(winid).relative ~= ""
	--
	-- 				-- Do not tint `terminal` or floating windows, tint everything else
	-- 				return buftype == "terminal" or floating
	-- 			end,
	-- 		})
	-- 	end,
	-- },
	{
		"Tsuzat/NeoSolarized.nvim",
		config = function()
			local colors = require("NeoSolarized.colors")
			colors.dark.bg0 = '#0a0a0a'
			colors.dark.bg1 = '#303238'

			require("NeoSolarized").setup({
				transparent = true,
				enable_italics = true,
				styles = {
					-- Style to be applied to different syntax groups
					comments = { italic = true },
					keywords = { italic = true },
					functions = { bold = true },
					variables = {},
					string = { italic = true },
					underline = true, -- true/false; for global underline
					undercurl = true, -- true/false; for global undercurl
				},
				on_highlights = function(highlights, _colors)
					highlights.OilFile = { fg = "#657b83", italic = true }
					highlights.OilDir = { fg = "#b59909", italic = true }
					highlights.fugitiveHash = { italic = true }
					highlights.fugitiveUnstagedSection = { italic = true, fg = "#005200" }
					highlights.fugitiveUntrackedSection = { italic = true, fg = "#666666" }
					highlights.fugitiveStagedSection = { italic = true, fg = "#008800" }
					highlights.Folded.bg = nil
					highlights.Folded.fg = "blue"
					highlights.Pmenu = { bg = "#141819" }
					highlights.NormalFloat = { bg = "#141819" }
					highlights.WinbarBreadcrumb = { italic = true, fg = "#999999", bg = "#141819" }
					highlights.WinbarBreadcrumbEm =
					{ italic = true, fg = "#dddddd", bg = "#141819", underline = true }
					highlights.DiffAdd = { bg = "#081F10" }
					highlights.DiffChange = { bg = "#0B1A00" }
					highlights.DiffDelete = { bg = "#2F0505" }
					highlights.DiffText = { bg = "#0E1A0F" }
					highlights.DiagnosticVirtualTextError = { fg = "#6f0000" }
					highlights.CursorLine = { bg = "#1f2a2f" }
				end,
			})
			-- vim.cmd("colorscheme NeoSolarized")
		end,
	}
}
