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
			symbols = {
				---Modification indicator.
				---
				---@type string
				modified = "",

				---Truncation indicator.
				---
				---@type string
				ellipsis = "",

				---Entry separator.
				---
				---@type string
				separator = "",
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
				normal = { bold = false, italic = true, bg = "black", underline = true },
				dirname = { fg = "#737aa2", bold = false, italic = true },
				basename = { bold = false, italic = true },
				context = { bold = false, italic = true },
				context_file = { bold = false, italic = true },
				context_module = { bold = false, italic = true },
				context_namespace = { bold = false, italic = true },
				context_package = { bold = false, italic = true },
				context_class = { bold = false, italic = true },
				context_method = { bold = false, italic = true },
				context_property = { bold = false, italic = true },
				context_field = { bold = false, italic = true },
				context_constructor = { bold = false, italic = true },
				context_enum = { bold = false, italic = true },
				context_interface = { bold = false, italic = true },
				context_function = { bold = false, italic = true },
				context_variable = { bold = false, italic = true },
				context_constant = { bold = false, italic = true },
				context_string = { bold = false, italic = true },
				context_number = { bold = false, italic = true },
				context_boolean = { bold = false, italic = true },
				context_array = { bold = false, italic = true },
				context_object = { bold = false, italic = true },
				context_key = { bold = false, italic = true },
				context_null = { bold = false, italic = true },
				context_enum_member = { bold = false, italic = true },
				context_struct = { bold = false, italic = true },
				context_event = { bold = false, italic = true },
				context_operator = { bold = false, italic = true },
				context_type_parameter = { bold = false, italic = true },
			},

			-- configurations go here
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
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
					lualine_b = { "diff", "diagnostics" },
					lualine_c = { "filename" },
					lualine_x = {},
					lualine_y = {},
					lualine_z = { "location" },
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
							mode = 0,
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
