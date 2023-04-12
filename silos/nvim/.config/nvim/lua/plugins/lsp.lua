return {
	"onsails/lspkind.nvim",
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"j-hui/fidget.nvim",
			"folke/neodev.nvim",
		},
	},
	{
		"kosayoda/nvim-lightbulb",
		dependencies = "antoinemadec/FixCursorHold.nvim",
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		dependencies = { "mason.nvim", "nvim-lua/plenary.nvim" },
		opts = function()
			local null_ls = require("null-ls")
			return {
				-- root_dir = require("null-ls.utils").root_pattern(".null-ls-root", "Makefile", ".git"),
				sources = {
					null_ls.builtins.diagnostics.flake8,
					null_ls.builtins.diagnostics.gitlint,
					null_ls.builtins.diagnostics.markdownlint,
					null_ls.builtins.diagnostics.shellcheck,
					null_ls.builtins.formatting.shfmt,
					null_ls.builtins.formatting.stylua,
				},
				on_attach = require("user.config.lsp").on_attach,
			}
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-cmdline",
		},
	},
}
