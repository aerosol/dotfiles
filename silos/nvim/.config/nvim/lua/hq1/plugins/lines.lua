return {
	{
		"utilyre/barbecue.nvim",
		name = "barbecue",
		version = "*",
		dependencies = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		opts = {

			exclude_filetypes = { "netrw", "oil", "toggleterm" },
			show_dirname = false,
			lead_custom_section = function()
				return ""
			end,
			custom_section = function()
				return ""
			end,
			symbols = {
				---Modification indicator.
				---
				---@type string
				modified = "",

				---Truncation indicator.
				---
				---@type string
				ellipsis = "%#WinbarBreadcrumb#‥",

				---Entry separator.
				---
				---@type string
				separator = "%#WinbarBreadcrumb#",
			},
			kinds = {
				File = "",
				Module = "",
				Namespace = "",
				Package = "",
				Class = "",
				Method = "",
				Property = "",
				Field = "",
				Constructor = "",
				Enum = "",
				Interface = "",
				Function = " ",
				Variable = "",
				Constant = "",
				String = "",
				Number = "",
				Boolean = "",
				Array = "",
				Object = "",
				Key = "",
				Null = "",
				EnumMember = "",
				Struct = "",
				Event = "",
				Operator = "",
				TypeParameter = "",
			},
			theme = {
				normal = { link = "WinbarBreadcrumb" },
				dirname = { link = "WinbarBreadcrumb" },
				basename = { link = "WinbarBreadcrumbEm" },
				context = { link = "WinbarBreadcrumb" },
				context_file = { link = "WinbarBreadcrumm" },
				context_module = { link = "WinbarBreadcrumb" },
				context_namespace = { link = "WinbarBreadcrumb" },
				context_package = { link = "WinbarBreadcrumb" },
				context_class = { link = "WinbarBreadcrumb" },
				context_method = { link = "WinbarBreadcrumb" },
				context_property = { link = "WinbarBreadcrumb" },
				context_field = { link = "WinbarBreadcrumb" },
				context_constructor = { link = "WinbarBreadcrumb" },
				context_enum = { link = "WinbarBreadcrumb" },
				context_interface = { link = "WinbarBreadcrumb" },
				context_function = { link = "WinbarBreadcrumb" },
				context_variable = { link = "WinbarBreadcrumb" },
				context_constant = { link = "WinbarBreadcrumb" },
				context_string = { link = "WinbarBreadcrumb" },
				context_number = { link = "WinbarBreadcrumb" },
				context_boolean = { link = "WinbarBreadcrumb" },
				context_array = { link = "WinbarBreadcrumb" },
				context_object = { link = "WinbarBreadcrumb" },
				context_key = { link = "WinbarBreadcrumb" },
				context_null = { link = "WinbarBreadcrumb" },
				context_enum_member = { link = "WinbarBreadcrumb" },
				context_struct = { link = "WinbarBreadcrumb" },
				context_event = { link = "WinbarBreadcrumb" },
				context_operator = { link = "WinbarBreadcrumb" },
				context_type_parameter = { link = "WinbarBreadcrumb" },
			},

			-- configurations go here
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			if vim.g.neovide then
				font_modifier = "italic"
			else
				font_modifier = ""
			end
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
					lualine_b = { { "filename", path = 3, color = { gui = "italic" } } },
					lualine_c = { "diff", "diagnostics" },
					lualine_x = {
						{
							function()
								local msg = "⊗ LSP"
								local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
								local clients = vim.lsp.get_active_clients()
								if next(clients) == nil then
									return msg
								end
								for _, client in ipairs(clients) do
									local filetypes = client.config.filetypes
									if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
										return "✓ " .. client.name
									end
								end
								return msg
							end,
							color = { gui = font_modifier },
						},
					},
				},
				lualine_y = {
					{ "branch", color = { gui = font_modifier } },
					lualine_z = { { "location", color = { gui = font_modifier } } },
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = { "filename" },
					lualine_x = { "location" },
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
