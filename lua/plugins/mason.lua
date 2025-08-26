return {
  { "mason-org/mason-lspconfig.nvim", version = "^1.32.0" },
  {
    "mason-org/mason.nvim",
    version = "^1.11.0",
    opts = function(_, opts)
      opts.ensure_installed = {
        "golangci-lint",
        "golangci-lint-langserver",
        "gopls",
        "prettier",
        "eslint-lsp"
      }
    end,
  },
}
