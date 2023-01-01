local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--single-branch",
		"git@github.com:folke/lazy.nvim.git",
		lazypath,
	})
end
vim.opt.runtimepath:prepend(lazypath)

local plugins = {
	{
		"mcchrish/zenbones.nvim",
		dependencies = "rktjmp/lush.nvim",

		config = function()
			vim.cmd([[colorscheme hq1bones]])
		end,
	},
	{
		"numToStr/Comment.nvim",
		config = true,
	},
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},

		version = "nightly",
	},
	{
		"aserowy/tmux.nvim",
		config = function()
			require("tmux").setup({
				copy_sync = {
					enable = false,
					redirect_to_clipboard = true,
					sync_clipboard = false,
					sync_unnamed = false,
				},
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		run = function()
			pcall(require("nvim-treesitter.install").update({ with_sync = true }))
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		dependencies = "nvim-treesitter",
	},
	{
		"RRethy/nvim-treesitter-endwise",
		dependencies = "nvim-treesitter",
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"j-hui/fidget.nvim",
			"folke/neodev.nvim",
		},
	},
	"onsails/lspkind.nvim",
	"tpope/vim-fugitive",
	"tpope/vim-rhubarb",
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				signs = {
					add = { text = "✚" },
					change = { text = "✎" },
					delete = { text = "✘" },
					topdelete = { text = "‾" },
					changedelete = { text = "✘" },
				},
			})
		end,
	},
	"tpope/vim-sleuth",
	{
		"hrsh7th/nvim-cmp",
		dependencies = { "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip", "saadparwaiz1/cmp_luasnip" },
	},
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local fzf = require("fzf-lua")
			local opts = { noremap = true, silent = true, desc = "FZF Related Shit" }

			fzf.setup({ winopts = { fullscreen = true, preview = {} } })

			vim.keymap.set("n", "go", function()
				fzf.files()
			end, opts)

			vim.keymap.set("n", "<leader>l", function()
				fzf.live_grep_native()
			end, opts)

			vim.keymap.set("n", "<leader><space>", function()
				fzf.buffers()
			end, opts)
		end,
	},
	"vim-test/vim-test",

	{
		"kosayoda/nvim-lightbulb",
		dependencies = "antoinemadec/FixCursorHold.nvim",
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = "hq1bones",
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					disabled_filetypes = {
						statusline = {},
						winbar = {},
					},
					ignore_focus = {},
					always_divide_middle = true,
					globalstatus = false,
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
					lualine_x = { "filetype" },
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
				tabline = {},
				winbar = {},
				inactive_winbar = {},
				extensions = { "quickfix", "fzf", "nvim-tree", "man" },
			})
		end,
	},
	"andymass/vim-matchup",
	{
		"echasnovski/mini.surround",
		branch = "stable",
		config = function()
			require("mini.surround").setup({})
		end,
	},
	{ "echasnovski/mini.cursorword", config = function()
		require('mini.cursorword').setup({})
	end },
	{
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup({

				-- show_help = false,
				triggers = "auto",
				plugins = { spelling = true },
				key_labels = { ["<leader>"] = "SPC" },
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	},

	{
		"anuvyklack/windows.nvim",
		dependencies = {
			{ "anuvyklack/middleclass" },
			{ "anuvyklack/animation.nvim", enabled = false },
		},
		event = "WinNew",
		config = function()
			vim.o.winwidth = 5
			vim.o.winminwidth = 5
			vim.o.equalalways = false
			require("windows").setup({
				animation = {
					enable = false,
					duration = 150,
				},
			})
			vim.keymap.set("n", "<leader>Z", "<Cmd>WindowsMaximize<CR>")
		end,
	},
	"thinca/vim-qfreplace",

	{ 'brenoprata10/nvim-highlight-colors',
		config = function()
			require('nvim-highlight-colors').setup({})
		end
	},
	"elixir-editors/vim-elixir"

}

require("lazy").setup(plugins, {})
