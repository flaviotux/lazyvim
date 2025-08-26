---@module "lazy"
---@type LazySpec[]
return {
  {
    "stevearc/conform.nvim",
    version = '^9.0.0',
    opts = function(_, opts)
      opts.default_format_opts.lsp_format = "first"
      opts.formatters_by_ft = opts.formatters_by_ft or {}

      opts.formatters_by_ft.go = {
        "golangci-lint",
      }
    end,
  },
}
