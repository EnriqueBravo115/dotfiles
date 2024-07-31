local Colors = {
  violet = "#C69FF5",
  black  = "#000000",
  green  = "#8BD5CA",
  gray1  = "#262626",
  gray5  = "#323437",
  gray7  = "#9e9e9e",
  gray10 = "#f0f0f0",
  t      = "#00FFFFFF",
  yellow = "#e85678",
  orange = "#EE999F",
}

local powerline = {
  normal = {
    a = { fg = Colors.black, bg = Colors.orange, gui = "bold" },
    b = { fg = Colors.gray10, bg = Colors.gray5 },
    c = { fg = Colors.gray7, bg = Colors.t },
  },
  insert = { a = { fg = Colors.black, bg = Colors.green, gui = "bold" }, },
  visual = { a = { fg = Colors.black, bg = Colors.violet, gui = "bold" } },
  command = { a = { fg = Colors.black, bg = Colors.yellow, gui = "bold" } },
  inactive = {
    a = { fg = Colors.gray1, bg = Colors.t, gui = "bold" },
    b = { fg = Colors.gray1, bg = Colors.t },
    c = { bg = Colors.t, fg = Colors.gray5 },
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
    lualine_b = { { "branch", icon = "󰘬" },

    },
    lualine_c = { { "filename" }, { "diff", symbols = { added = "󰋠 ", modified = "󱗜 ", removed = "󰍵 " } } },
    lualine_x = {
      "diagnostics",
    },
    lualine_y = {
    },
    lualine_z = {
      { "location" }
    }
  },
}
