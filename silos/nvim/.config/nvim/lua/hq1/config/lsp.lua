M = {}

function M.on_attach(client, bufnr)
	-- local fzf = require("fzf-lua")

	local nmap = function(keys, func, desc)
		if desc then
			desc = "LSP: " .. desc
		end

		vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
	end

	local caps = function(cap)
		do
			local clients = vim.lsp.get_clients()
			for _, c in ipairs(clients) do
				local caps = c.server_capabilities
				for key in pairs(caps) do
					print(key)
				end
				print("Requested capability: " .. cap)
				return caps and caps[cap]
			end
		end
	end

	nmap("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")

	-- nmap("<leader>s", function()
	-- 	fzf.lsp_live_workspace_symbols()
	-- end, "Workspace symbols")

	-- nmap("gd", function()
	-- 	fzf.lsp_definitions({
	-- 		jump_to_single_result = true,
	-- 		jump_to_single_result_action = require("fzf-lua.actions").file_vsplit,
	-- 	})
	-- end, "[G]oto [D]efinition")

	-- nmap("gr", function()
	-- 	if caps("referencesProvider") then
	-- 		fzf.lsp_references({ jump_to_single_result = true })
	-- 	else
	-- 		fzf.grep_cword()
	-- 	end
	-- end, "[G]oto [R]eferences")

	-- nmap("=", function()
	-- 	if caps("documentSymbolProvider") then
	-- 		fzf.lsp_document_symbols({
	-- 			winopts = { fullscreen = false, preview = { hidden = "hidden" } },
	-- 		})
	-- 	else
	-- 		local cur_buf = vim.api.nvim_get_current_buf()
	-- 		local cur_ft = vim.api.nvim_get_option_value("filetype", { buf = cur_buf })
	-- 		if cur_ft == 'elixir' then
	-- 			fzf.grep_curbuf({
	-- 				search = '(def |defp |defmacro | +test | +describe")',
	-- 				no_esc = true,
	-- 				previewer = false,
	-- 				prompt = 'Wee'
	-- 			})
	-- 		else
	-- 			print('No references for filetype: ' .. cur_ft)
	-- 		end
	-- 	end
	-- end, "Outline")

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

	-- nmap("<leader>q", fzf.lsp_document_diagnostics, "List diagnostics")

	nmap("<leader>dh", function()
		vim.diagnostic.hide(nil, 0)
	end, "Hide diagnostics")
	nmap("<leader>ds", function()
		vim.diagnostic.show(nil, 0)
	end, "Show diagnostics")
end

local servers = {
	clangd = {},
	gopls = {},
	pyright = {},
	rust_analyzer = {},
	lua_ls = {},
}

local capabilities = vim.lsp.protocol.make_client_capabilities()

require("mason").setup()
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


require('lspconfig').lexical.setup {
	cmd = { "/home/hq1/workspaces/github/lexical/_build/dev/package/lexical/bin/start_lexical.sh" },
	filetypes = { "elixir", "eelixir", "heex" },
	-- optional settings
	settings = {}
}

vim.fn.sign_define('DiagnosticSignError', { text = '⮾ ', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = '⨻ ', texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = '⯑ ', texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '⊙', texthl = 'DiagnosticSignHint' })

vim.diagnostic.config({
	virtual_text = true,
})

return M
