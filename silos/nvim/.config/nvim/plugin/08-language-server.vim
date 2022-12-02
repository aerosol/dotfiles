lua << EOF
local lsp_status = require('lsp-status')

local cmp = require'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
      -- For `vsnip` user.
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
    ['<CR>'] = cmp.mapping.confirm({behavior = cmp.ConfirmBehavior.Replace, select = false}),
    ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'omni' },
    { name = 'buffer' },
  }
})

vim.lsp.handlers["textDocument/publishDiagnostics"] =
    vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        -- Disable underline, it's very annoying
        underline = false,
        update_in_insert = false
    })

local on_attach = function(client, bufnr)
  lsp_status.config({})
  lsp_status.register_progress()
  lsp_status.on_attach(client)
end

local lsp_config = require('lspconfig')

lsp_config.jsonls.setup {
  cmd = { 'vscode-json-languageserver', '--stdio' },
  on_attach = on_attach,
  capabilities = require('cmp_nvim_lsp').default_capabilities(lsp_status.capabilities)
}

lsp_config.yamlls.setup {
  cmd = { 'yaml-language-server', '--stdio' },
  on_attach = on_attach,
  capabilities = require('cmp_nvim_lsp').default_capabilities(lsp_status.capabilities)
}

lsp_config.html.setup {
  cmd = { 'vscode-html-languageserver', '--stdio' },
  on_attach = on_attach,
  capabilities = require('cmp_nvim_lsp').default_capabilities(lsp_status.capabilities)
}

lsp_config.cssls.setup {
  cmd = { 'vscode-css-languageserver', '--stdio' },
  on_attach = on_attach,
  capabilities = require('cmp_nvim_lsp').default_capabilities(lsp_status.capabilities)
}

lsp_config.racket_langserver.setup{
  on_attach = on_attach,
  capabilities = require('cmp_nvim_lsp').default_capabilities(lsp_status.capabilities)
}

lsp_config.elixirls.setup{
  cmd = { vim.env.HOME .. "/workspaces/github/elixir-ls/rel/language_server.sh" };
  on_attach = on_attach,
  capabilities = require('cmp_nvim_lsp').default_capabilities(lsp_status.capabilities)
}

lsp_config.pylsp.setup{
  cmd = { "pylsp" };
  on_attach = on_attach,
  capabilities = require('cmp_nvim_lsp').default_capabilities(lsp_status.capabilities)
}

lsp_config.tsserver.setup{
  cmd = { 'typescript-language-server', '--stdio' };
  on_attach = on_attach,
  capabilities = require('cmp_nvim_lsp').default_capabilities(lsp_status.capabilities)
}

lsp_config.gopls.setup {
    cmd = {"gopls", "serve"},
    on_attach = on_attach,
    capabilities = require('cmp_nvim_lsp').default_capabilities(lsp_status.capabilities),
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
}

lsp_config.nimls.setup {}

lsp_config.gdscript.setup{}

local rust_opts = {
    tools = { -- rust-tools options
        runnables = {
          use_telescope = false
        },
        debuggables = {
          use_telescope = false
        },
        autoSetHints = true,
        inlay_hints = {
            highlight = "RustInlayHint",
            parameter_hints_prefix = " <- ",
            other_hints_prefix = " => ",
        },
    },

    server = {
        on_attach = on_attach,
        settings = {
            ["rust-analyzer"] = {
                checkOnSave = {
                    command = "clippy"
                },
            }
        }
    },
}

require('rust-tools').setup(rust_opts)
EOF

nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <leader>wa <cmd>lua vim.lsp.buf.add_workspace_folder()<CR>
nnoremap <silent> <leader>wr <cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>
nnoremap <silent> <leader>wl <cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>
nnoremap <silent> <leader>D <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> <leader>e <cmd>lua vim.diagnostic.open_float()<CR>
nnoremap <silent> [d <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> ]d <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent> <leader>q <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>
nnoremap <silent> <leader>a <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <silent> <leader>F <cmd>lua vim.lsp.buf.formatting()<CR>

autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()
