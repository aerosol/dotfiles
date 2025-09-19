local colors = require("hq1.forest.colors")
local c = colors.palette

local M = {}

function M.setup()
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.background = "dark"
	vim.g.colors_name = "forest"

	local highlights = {
		-- Editor
		Normal = { fg = c.fg, bg = "none" },
		NormalFloat = { fg = c.fg, bg = c.bg_light },
		FloatBorder = { fg = c.green, bg = c.bg_light },
		ColorColumn = { bg = c.bg_light },
		Cursor = { fg = c.bg, bg = c.cursor },
		CursorLine = { bg = c.bg_light },
		CursorColumn = { bg = c.bg_light },
		LineNr = { fg = c.comment },
		CursorLineNr = { fg = c.green_light, bold = true },
		SignColumn = { fg = c.comment, bg = c.bg },
		Folded = { fg = c.comment, bg = c.bg_light },
		FoldColumn = { fg = c.comment, bg = c.bg },
		VertSplit = { fg = c.green_dark },
		WinSeparator = { fg = c.green_dark },

		-- Search
		Search = { bg = c.search, fg = c.fg },
		IncSearch = { bg = c.green_light, fg = c.bg },
		Substitute = { bg = c.green_bright, fg = c.bg },

		-- Visual
		Visual = { bg = c.visual },
		VisualNOS = { bg = c.visual },

		-- Popup menu
		Pmenu = { fg = c.fg, bg = c.bg_light },
		PmenuSel = { fg = c.bg, bg = c.green },
		PmenuSbar = { bg = c.bg_alt },
		PmenuThumb = { bg = c.green },

		-- Status line
		StatusLine = { fg = c.fg, bg = c.bg_light },
		StatusLineNC = { fg = c.comment, bg = c.bg_alt },

		-- Tabs
		TabLine = { fg = c.comment, bg = c.bg_alt },
		TabLineFill = { bg = c.bg_alt },
		TabLineSel = { fg = c.fg, bg = c.bg },

		-- Syntax highlighting
		Comment = { fg = c.comment, italic = true },
		Constant = { fg = c.constant },
		String = { fg = c.string },
		Character = { fg = c.string },
		Number = { fg = c.constant },
		Boolean = { fg = c.constant },
		Float = { fg = c.constant },

		Identifier = { fg = c.variable },
		Function = { fg = c.function_name },

		Statement = { fg = c.keyword },
		Conditional = { fg = c.keyword },
		Repeat = { fg = c.keyword },
		Label = { fg = c.keyword },
		Operator = { fg = c.fg },
		Keyword = { fg = c.keyword },
		Exception = { fg = c.keyword },

		PreProc = { fg = c.green_light },
		Include = { fg = c.green_light },
		Define = { fg = c.green_light },
		Macro = { fg = c.green_light },
		PreCondit = { fg = c.green_light },

		Type = { fg = c.type },
		StorageClass = { fg = c.keyword },
		Structure = { fg = c.type },
		Typedef = { fg = c.type },

		Special = { fg = c.green_accent },
		SpecialChar = { fg = c.green_accent },
		Tag = { fg = c.green_light },
		Delimiter = { fg = c.fg },
		SpecialComment = { fg = c.green_light },
		Debug = { fg = c.green_light },

		Underlined = { underline = true },
		Ignore = { fg = c.comment },
		Error = { fg = c.error },
		Todo = { fg = c.warning, bold = true },

		-- Diff (standard colors)
		DiffAdd = { bg = c.diff_add, fg = c.bg },
		DiffChange = { bg = c.diff_change, fg = c.bg },
		DiffDelete = { bg = c.diff_delete, fg = c.bg },
		DiffText = { bg = c.diff_text, fg = c.bg },

		-- Git signs
		GitSignsAdd = { fg = c.git_add },
		GitSignsChange = { fg = c.git_change },
		GitSignsDelete = { fg = c.git_delete },

		-- Diagnostic
		DiagnosticError = { fg = c.error },
		DiagnosticWarn = { fg = c.warning },
		DiagnosticInfo = { fg = c.info },
		DiagnosticHint = { fg = c.hint },

		DiagnosticUnderlineError = { underline = true, sp = c.error },
		DiagnosticUnderlineWarn = { underline = true, sp = c.warning },
		DiagnosticUnderlineInfo = { underline = true, sp = c.info },
		DiagnosticUnderlineHint = { underline = true, sp = c.hint },

		-- LSP
		LspReferenceText = { bg = c.selection },
		LspReferenceRead = { bg = c.selection },
		LspReferenceWrite = { bg = c.selection },

		-- Tree-sitter
		["@comment"] = { link = "Comment" },
		["@string"] = { link = "String" },
		["@number"] = { link = "Number" },
		["@boolean"] = { link = "Boolean" },
		["@function"] = { link = "Function" },
		["@keyword"] = { link = "Keyword" },
		["@type"] = { link = "Type" },
		["@variable"] = { link = "Identifier" },
		["@constant"] = { link = "Constant" },
		["@operator"] = { link = "Operator" },
		["@punctuation"] = { fg = c.fg },
		["@tag"] = { fg = c.green_light },
		["@attribute"] = { fg = c.green_accent },

		-- Telescope
		TelescopeNormal = { fg = c.fg, bg = c.bg_light },
		TelescopeBorder = { fg = c.green, bg = c.bg_light },
		TelescopePromptNormal = { fg = c.fg, bg = c.bg_alt },
		TelescopePromptBorder = { fg = c.green, bg = c.bg_alt },
		TelescopeSelection = { fg = c.fg, bg = c.selection },
		TelescopeSelectionCaret = { fg = c.green_light },

		-- Which-key
		WhichKey = { fg = c.green_light },
		WhichKeyGroup = { fg = c.green_accent },
		WhichKeyDesc = { fg = c.fg },
		WhichKeySeparator = { fg = c.comment },
		WhichKeyFloat = { bg = c.bg_light },

		-- Indent guides
		IndentBlanklineChar = { fg = c.bg_light },
		IndentBlanklineContextChar = { fg = c.green_dark },
	}

	for group, hl in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, hl)
	end
end

return M
