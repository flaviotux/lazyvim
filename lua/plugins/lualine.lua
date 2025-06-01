return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    opts.options.icons_enabled = true
    opts.options.section_separators = "|"
    opts.options.component_separators = "|"

    opts.sections.lualine_a = {
      { "mode", icon = "" },
    }
  end,
}
