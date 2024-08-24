local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

lspconfig.clangd.setup({
  cmd = { "clangd", "--compile-commands-dir=." },
  on_attach = function (client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
})

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"}
})

lspconfig.tsserver.setup({
  on_attach = function(client, bufnr)
    -- Disable tsserver's formatting capability in favor of null-ls or other formatters
    client.server_capabilities.documentFormattingProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
  filetypes = {"typescript", "typescriptreact", "javascript", "javascriptreact"},
})

-- JSON
lspconfig.jsonls.setup {}

-- Markdown
lspconfig.marksman.setup {}

-- HTML
lspconfig.html.setup {}

-- CSS
lspconfig.cssls.setup {}

-- Tailwind CSS
lspconfig.tailwindcss.setup {}
