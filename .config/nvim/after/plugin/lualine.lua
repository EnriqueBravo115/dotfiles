local Colors = {
  violet      = "#ae81ff",
  black1      = "#000000",
  black2      = "#262626",
  yellow1     = "#d9b263",
  yellow2     = "#e3c78a",
  git         = "#393b44",
  filename    = "#9e9e9e",
  transparent = "#00FFFFFF",
  red         = "#ff8170",
  blue        = "#78c2b3",
}

local powerline = {
  normal = {
    a = { fg = Colors.black1, bg = Colors.blue, gui = "bold" },
    b = { fg = Colors.yellow2, bg = Colors.git },
    c = { fg = Colors.filename, bg = Colors.transparent },
  },
  insert = { a = { fg = Colors.black1, bg = Colors.red, gui = "bold" }, },
  visual = { a = { fg = Colors.black1, bg = Colors.violet, gui = "bold" } },
  command = { a = { fg = Colors.black1, bg = Colors.yellow1, gui = "bold" } },
  inactive = {
    a = { fg = Colors.black2, bg = Colors.transparent, gui = "bold" },
    b = { fg = Colors.black2, bg = Colors.transparent },
    c = { bg = Colors.transparent, fg = Colors.git },
  },
}

require("lualine").setup {
  options = {
    theme = powerline,
    component_separators = "",
    section_separators = { left = "", right = "" },
    always_divide_middle = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = { { "mode", icon = "" } },
    lualine_b = { { "branch", icon = "󰘬" }, },
    lualine_c = { { "filename" }, { "diff", symbols = { added = "󰋠 ", modified = "󱗜 ", removed = "󰍵 " } } },
    lualine_x = { "diagnostics" },
    lualine_y = {
      { "filetype", icon_only = true },
    },
    lualine_z = {
      { "location" }
    }
  },
}
