local Colors = {
  violet      = "#ae81ff",
  black       = "#000000",
  green       = "#d9b263",
  gray1       = "#262626",
  git         = "#393b44",
  filename    = "#9e9e9e",
  yellow      = "#e3c78a",
  transparent = "#00FFFFFF",
  red         = "#ff8170",
  blue        = "#78c2b3",
}

local powerline = {
  normal = {
    a = { fg = Colors.black, bg = Colors.blue, gui = "bold" },
    b = { fg = Colors.yellow, bg = Colors.git },
    c = { fg = Colors.filename, bg = Colors.transparent },
  },
  insert = { a = { fg = Colors.black, bg = Colors.red, gui = "bold" }, },
  visual = { a = { fg = Colors.black, bg = Colors.violet, gui = "bold" } },
  command = { a = { fg = Colors.black, bg = Colors.green, gui = "bold" } },
  inactive = {
    a = { fg = Colors.gray1, bg = Colors.transparent, gui = "bold" },
    b = { fg = Colors.gray1, bg = Colors.transparent },
    c = { bg = Colors.transparent, fg = Colors.git },
  },
}

require("lualine").setup {
  options = {
    theme = powerline,
    component_separators = "",
    section_separators = { left = '', right = '' },
    always_divide_middle = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = { { "mode" } },
    lualine_b = { { "branch", icon = "󰘬" }, },
    lualine_c = { { "filename" }, { "diff", symbols = { added = "󰋠 ", modified = "󱗜 ", removed = "󰍵 " } } },
    lualine_x = { "diagnostics" },
    lualine_y = {
    },
    lualine_z = {
      { "location" }
    }
  },
}
