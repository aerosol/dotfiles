return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			font_modifier = "italic"
			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = "auto",
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					disabled_filetypes = {
						statusline = {},
						winbar = {},
					},
					ignore_focus = {},
					always_divide_middle = true,
					globalstatus = true,
					refresh = {
						statusline = 1000,
						tabline = 1000,
						winbar = 1000,
					},
				},
				sections = {
					lualine_a = {
						{
							"mode",
							fmt = function(str)
								return str:sub(1, 1)
							end,
						},
					},
					lualine_b = {
						{ "filename", path = 3, color = { gui = font_modifier } },
						"location"
					},
					lualine_c = { "diff", "diagnostics" },
					lualine_x = {
						{
							require('lsp-progress').progress
						},
					},
					lualine_y = {},
					lualine_z = {},
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = { "filename" },
					lualine_x = {},
					lualine_y = {},
					lualine_z = {},
				},
				tabline = {
					lualine_a = {
						{
							"tabs",
							icons_enabled = true,
							max_length = 80,
							mode = 1,
							tabs_color = {
								-- Same values as the general color option can be used here.
								active = "Typedef", -- Color for active tab.
								inactive = "Visual", -- Color for inactive tab.
							},
							fmt = function(name, context)
								-- Show + if buffer is modified in tab
								local buflist = vim.fn.tabpagebuflist(context.tabnr)
								local winnr = vim.fn.tabpagewinnr(context.tabnr)
								local bufnr = buflist[winnr]
								local mod = vim.fn.getbufvar(bufnr, "&mod")

								return name .. (mod == 1 and " +" or "")
							end,
						},
					},
					lualine_x = {
						"branch",
					},
				},
				winbar = {},
				inactive_winbar = {},
				extensions = { "quickfix", "fzf", "man" },
			})
		end,
	},
}
