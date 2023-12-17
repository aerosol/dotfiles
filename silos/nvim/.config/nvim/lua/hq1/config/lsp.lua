M = {}

function M.on_attach(client, bufnr)
	require("lsp-format").on_attach(client, bufnr)
	local fzf = require("fzf-lua")
	local nmap = function(keys, func, desc)
		if desc then
			desc = "LSP: " .. desc
		end

		vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
	end

	local caps = function(cap)
		do
			local clients = vim.lsp.get_active_clients()
			for _, client in ipairs(clients) do
				local caps = client.server_capabilities
				return caps and caps[cap]
			end
		end
	end

	nmap("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")

	nmap("gd", function()
		fzf.lsp_definitions({
			jump_to_single_result = true,
			jump_to_single_result_action = require("fzf-lua.actions").file_vsplit,
		})
	end, "[G]oto [D]efinition")

	nmap("gr", function()
		if caps("referencesProvider") then
			fzf.lsp_references({ jump_to_single_result = true })
		else
			fzf.grep_cword()
		end
	end, "[G]oto [R]eferences")

	nmap("=", function()
		if caps("documentSymbolProvider") then
			fzf.lsp_document_symbols({
				winopts = { fullscreen = false, preview = { hidden = "hidden" } },
			})
		else
			local cur_buf = vim.api.nvim_get_current_buf()
			local cur_ft = vim.api.nvim_buf_get_option(cur_buf, "filetype")
			if cur_ft == 'elixir' then
				fzf.grep_curbuf({
					search = '(def |defp |defmacro | +test | +describe")',
					no_esc = true,
					previewer = false,
					prompt = 'Wee'
				})
			else
				print('No references for filetype: ' .. cur_ft)
			end
		end
	end, "Outline")

	nmap("gI", vim.lsp.buf.implementation, "[G]oto [I]mplementation")

	nmap("<leader>D", vim.lsp.buf.type_definition, "Type [D]efinition")

	nmap("K", vim.lsp.buf.hover, "Hover Documentation")

	-- nmap("<C-k>", vim.lsp.buf.signature_help, "Signature Documentation")

	-- nmap("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")

	nmap("<leader>wa", vim.lsp.buf.add_workspace_folder, "[W]orkspace [A]dd Folder")

	nmap("<leader>wr", vim.lsp.buf.remove_workspace_folder, "[W]orkspace [R]emove Folder")

	nmap("<leader>wl", function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, "[W]orkspace [L]ist Folders")

	nmap("<leader>e", vim.diagnostic.open_float, "Open floating diagnostics")

	nmap("<leader>q", fzf.lsp_document_diagnostics, "List diagnostics")

	nmap("<leader>dh", function()
		vim.diagnostic.hide(nil, 0)
	end, "Hide diagnostics")
	nmap("<leader>ds", function()
		vim.diagnostic.show(nil, 0)
	end, "Show diagnostics")

	-- Create a command `:Format` local to the LSP buffer
	vim.api.nvim_buf_create_user_command(bufnr, "Format", function(_)
		vim.lsp.buf.format()
	end, { desc = "Format current buffer with LSP" })
end

local servers = {
	clangd = {},
	gopls = {},
	pyright = {},
	rust_analyzer = {},
	tsserver = {},
	lua_ls = {
		Lua = {
			workspace = { checkThirdParty = false },
			telemetry = { enable = false },
		},
	},
}

require("neodev").setup()

-- nvim-cmp supports additional completion capabilities, so broadcast that to servers
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")

local lexical_config = {
	filetypes = { "elixir", "eelixir", "heex" },
	cmd = { "/home/hq1/workspaces/github/lexical/_build/dev/package/lexical/bin/start_lexical.sh" },
	settings = {},
}

if not configs.lexical then
	configs.lexical = {
		default_config = {
			filetypes = lexical_config.filetypes,
			cmd = lexical_config.cmd,
			root_dir = function(fname)
				return lspconfig.util.root_pattern("mix.exs", ".git")(fname) or vim.loop.os_homedir()
			end,
			-- optional settings
			settings = lexical_config.settings,
		},
	}
end

lspconfig.lexical.setup({
	-- optional config
	on_attach = M.on_attach,
})

require("sg").setup {
	on_attach = M.on_attach
}

-- Setup mason so it can manage external tooling
require("mason").setup()

-- Ensure the servers above are installed
local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup({
	ensure_installed = vim.tbl_keys(servers),
})

mason_lspconfig.setup_handlers({
	function(server_name)
		require("lspconfig")[server_name].setup({
			capabilities = capabilities,
			on_attach = M.on_attach,
			settings = servers[server_name],
		})
	end,
})

-- nvim-cmp setup
local cmp = require("cmp")
local lspkind = require("lspkind")

lspkind.init({
	symbol_map = {
		Copilot = "",
		Codeium = "",
	},
})

vim.api.nvim_set_hl(0, "CmpItemKindCopilot", { fg = "#6CC644" })
vim.api.nvim_set_hl(0, "CmpItemKindCodeium", { fg = "#6CC644" })

cmp.setup({
	window = {
		completion = cmp.config.window.bordered({
			winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None",
		}),
		documentation = cmp.config.window.bordered({
			winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None",
		}),
	},
	experimental = {
		ghost_text = true,
	},
	formatting = {
		format = lspkind.cmp_format(),
	},
	mapping = cmp.mapping.preset.insert({
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end, { "i", "s" }),
	}),
	sources = {
		{ name = "codeium",  group_index = 2 },
		{ name = "copilot",  group_index = 2 },
		{ name = "nvim_lsp", group_index = 2 },
		{ name = "buffer",   group_index = 2 },
	},
})

cmp.setup.cmdline({ "/", "?" }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" },
	},
})

cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline" },
	}),
})

vim.fn.sign_define('DiagnosticSignError', { text = '⮾ ', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = '⨻ ', texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = '⯑ ', texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '⊙', texthl = 'DiagnosticSignHint' })

vim.diagnostic.config({
	virtual_text = true,
})

return M
