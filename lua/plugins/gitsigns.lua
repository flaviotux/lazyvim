return {
  {
    "gitsigns.nvim",
    version = "^1.0.2",
    opts = {
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 100,
        virt_text_pos = "eol",
        ignore_whitespace = true,
      },

      signs = {
        add          = { text = '┃' },
        change       = { text = '┃' },
        delete       = { text = "󰍵" },
        topdelete    = { text = '▔' },
        changedelete = { text = "󱕖" },
        untracked    = { text = '┆' },
      },

      signs_staged = {
        add = { text = '┃' },
        change = { text = '┃' },
        delete = { text = '▁' },
        topdelete = { text = '▔' },
        changedelete = { text = '~' },
      }
    }
  }
}
