vim.lsp.config("dexter", {
	cmd = { "dexter", "lsp" },
	root_markers = { "mix.exs", ".git" },
	filetypes = { "elixir", "eelixir", "heex" },
	init_options = {
		followDelegates = true, -- jump through defdelegate to the target function
		-- stdlibPath = "",      -- override Elixir stdlib path (auto-detected)
		-- debug = false,        -- verbose logging to stderr (view with :LspLog)
	},
})

vim.lsp.enable({
	"dexter",
	"lua-ls",
})

vim.diagnostic.config({
	virtual_text = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = true,
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "󰅚 ",
			[vim.diagnostic.severity.WARN] = "󰀪 ",
			[vim.diagnostic.severity.INFO] = "󰋽 ",
			[vim.diagnostic.severity.HINT] = "󰌶 ",
		},
		numhl = {
			[vim.diagnostic.severity.ERROR] = "ErrorMsg",
			[vim.diagnostic.severity.WARN] = "WarningMsg",
		},
	},
})
return {}
