return {
  {
    "github/copilot.vim",
    dependencies = {
      "nvim-lualine/lualine.nvim",
      optional = true,
      event = "VeryLazy",
      opts = function(_, opts)
        table.insert(
          opts.sections.lualine_x,
          2,
          LazyVim.lualine.status(LazyVim.config.icons.kinds.Copilot, function()
            local client = package.loaded["_copilot"] and vim.call "copilot#RunningClient"
            if client then
              return (client.status.kind == nil and "pending") or
                  (client.status.kind == "Normal" and vim.call "copilot#Enabled" == 1 and "ok") or
                  (client.status.kind == "Error" and "error") or nil
            end
          end)
        )

        Snacks.toggle({
          name = "Copilot Completion",
          color = {
            enabled = "azure",
            disabled = "orange",
          },
          get = function()
            return vim.call "copilot#Enabled" == 1
          end,
          set = function(state)
            if state then
              vim.cmd("Copilot enable")
            else
              vim.cmd("Copilot disable")
            end
          end,
        }):map("<leader>at")
      end,
    }
  }
}
