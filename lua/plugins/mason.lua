return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = {
        "goimports-reviser",
        "goimports",
        "gofumpt",
        "golines",
        "prettier",
      }
    end,
  },
}
