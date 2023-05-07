local colors = {
	color2 = "#0000af",
	color3 = "#87005f",
	color4 = "#cde8ff",
	color5 = "#ffffff",
	color13 = "#af00af",
	color10 = "#00005f",
	color8 = "#f07178",
	color9 = "#ffffff",
}
return {
	visual = {
		a = { fg = colors.color2, bg = colors.color3, gui = "bold" },
		b = { fg = colors.color4, bg = colors.color5 },
	},
	replace = {
		a = { fg = colors.color2, bg = colors.color8, gui = "bold" },
		b = { fg = colors.color4, bg = colors.color5 },
	},
	inactive = {
		c = { fg = colors.color4, bg = colors.color2 },
		a = { fg = colors.color4, bg = colors.color5, gui = "bold" },
		b = { fg = colors.color4, bg = colors.color5 },
	},
	normal = {
		c = { fg = colors.color9, bg = colors.color2 },
		a = { fg = colors.color9, bg = colors.color10, gui = "bold" },
		b = { fg = colors.color9, bg = colors.color5 },
	},
	insert = {
		a = { fg = colors.color5, bg = colors.color13, gui = "bold" },
		b = { fg = colors.color4, bg = colors.color5 },
	},
}
