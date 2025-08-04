return {
  {
    "williamboman/mason.nvim",
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
