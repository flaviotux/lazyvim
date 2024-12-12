return {
  {
    "catppuccin/nvim",
    ---@param opts CatppuccinOptions
    opts = function(_, opts)
      local ctp = require("catppuccin")

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
