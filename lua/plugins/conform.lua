return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.go = {
        "gofumpt",
        "goimports",
        "golines",
        "goimports-reviser",
      }
    end,
  },
}