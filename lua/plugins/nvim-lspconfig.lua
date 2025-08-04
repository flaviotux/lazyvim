return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.inlay_hints.enabled = false

    opts.servers.golangci_lint_ls = {
      init_options = {
        command = { "golangci-lint", "run", "--output.json.path=stdout", "--issues-exit-code=1" },
      },
      filetypes = { "go" },
    }

    opts.setup.tailwindcss = function(_, twOpts)
      twOpts.settings = {
        tailwindCSS = {
          classFunctions = { "cva", "cx" }
        }
      }
    end

    opts.diagnostics.virtual_text.current_line = true
  end,
  setup = {
    golangci_lint_ls = function(_, opts)
      require "lspconfig".golangci_lint_ls.setup(opts)
      return true
    end,
    tailwindcss = function(_, opts)
      require "lspconfig".tailwindcss.setup(opts)
      return true
    end,
  },
}
