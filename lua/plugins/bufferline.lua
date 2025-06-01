if true then return {} end

return {
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.options.always_show_bufferline = true
    end,
  },
}
