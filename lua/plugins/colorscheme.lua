return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    ---@param opts CatppuccinOptions
    opts = function(_, opts)
      local ctp = require("catppuccin")

      opts.integrations.snacks = {
        enabled = true,
        indent_scope_color = "surface2"
      }

      opts.custom_highlights = function(C)
        return {
          BufferLine = { bg = C.crust, fg = C.overlay0 },
          BufferLineFill = { bg = ctp.options.transparent_background and C.none or C.mantle },
        }
      end
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
