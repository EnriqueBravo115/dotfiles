vim.g.moonflyTransparent = true

require('nightfox').setup({
  options = {
    transparent = true,
    terminal_colors = true,
    dim_inactive = false,
    module_default = true,
    styles = {           -- Style to be applied to different syntax groups
      comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
      conditionals = "NONE",
      constants = "NONE",
      functions = "NONE",
      keywords = "NONE",
      numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",
    },
    inverse = { -- Inverse highlight for different types
      match_paren = false,
      visual = true,
      search = false,
    },
  },
})

vim.cmd("colorscheme carbonfox")
