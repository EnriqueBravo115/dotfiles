local highlight = {
  "RainbowRed",
  "RainbowYellow",
  "RainbowBlue",
  "RainbowOrange",
  "RainbowGreen",
  "RainbowViolet",
  "RainbowCyan",
}

local hooks = require "ibl.hooks"
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#3f444a" })
  vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#3f444a" })
  vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#3f444a" })
  vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#3f444a" })
  vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#3f444a" })
  vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#3f444a" })
  vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#3f444a" })
end)

require("ibl").setup {
  indent = {highlight = highlight, char = "│"},
  whitespace = {
    remove_blankline_trail = true,
  },
  scope = {
    enabled = false,
  },
  exclude = {
    filetypes = {
      "vimwiki",
    }
  }
}
