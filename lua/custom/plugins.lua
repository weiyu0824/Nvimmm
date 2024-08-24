local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",  -- C++
        "pyright", -- Python
        "typescript-language-server", -- TS/JS
        "eslint_d", -- Fast eslint
        "json-lsp", -- JSON
        "marksman", -- Markdown
        "prettier", -- Prettier
        "tailwindcss-language-server", -- Tailwind CSS
        "html-lsp", -- HTML
        "css-lsp", -- CSS
      }
    }
  }
}
return plugins
