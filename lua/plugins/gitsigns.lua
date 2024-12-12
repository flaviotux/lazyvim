return {
  {
    "gitsigns.nvim",
    opts = function(_, opts)
      opts.current_line_blame = true

      Snacks.toggle({
        notify = true,
        which_key = true,
        map = "<leader>uG",
        name = "Git Signs",
        get = function()
          return require("gitsigns.config").config.signcolumn
        end,
        set = function(state)
          require("gitsigns").toggle_signs(state)
        end,
      })
    end,
  },
}
