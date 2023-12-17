return {
	{
		'lukas-reineke/lsp-format.nvim',
		config = function()
			require("lsp-format").setup { sync = true }
		end
	},
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					null_ls.builtins.diagnostics.eslint,
					null_ls.builtins.completion.spell,
					null_ls.builtins.code_actions.shellcheck,
					null_ls.builtins.diagnostics.write_good,
				},
			})
		end,
	},
	{
		"linrongbin16/lsp-progress.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lsp-progress").setup({})

			vim.api.nvim_create_augroup("lualine_augroup", { clear = true })
			vim.api.nvim_create_autocmd("User", {
				group = "lualine_augroup",
				pattern = "LspProgressStatusUpdated",
				callback = require("lualine").refresh,
			})
		end,
	},
	-- { "https://git.sr.ht/~whynothugo/lsp_lines.nvim", config = true },
	"onsails/lspkind.nvim",
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"folke/neodev.nvim",
		},
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/cmp-path"
		},
	},
}
