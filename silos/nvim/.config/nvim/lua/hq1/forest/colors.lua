local M = {}

M.palette = {
	-- Background
	bg = "#000000",
	bg_alt = "#0a0a0a",
	bg_light = "#333333",

	-- Foreground
	fg = "#00ff99",
	fg_alt = "#00ff99",
	fg_dim = "#00ff99",

	-- Green shades (muted/darker)
	green_dark = "#00ff99",
	green = "#00ff99",
	green_bright = "#00ff99",
	green_light = "#00ff99",
	green_pale = "#00ff77",
	green_accent = "#00ff99",

	-- Functional colors
	comment = "#4a5a4a",
	string = "#5d7a5d",
	keyword = "#00ff99",
	function_name = "#00ff99",
	variable = "#00ff99",
	type = "#00ff99",
	constant = "#00ff99",

	-- Special
	cursor = "#7d9a7d",
	selection = "#2d4a2d",
	search = "#3d5a3d",
	visual = "#1a3a1a",

	-- Standard diff colors (keeping traditional)
	diff_add = "#2ea043",
	diff_delete = "#f85149",
	diff_change = "#d29922",
	diff_text = "#f6cc7a",

	-- Git colors
	git_add = "#2ea043",
	git_change = "#d29922",
	git_delete = "#f85149",

	-- Status colors
	error = "#f85149",
	warning = "#d29922",
	info = "#79c0ff",
	hint = "#8daa8d",
}

return M
