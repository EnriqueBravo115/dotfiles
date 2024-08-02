vim.cmd("highlight RainbowDelimiterRed guifg=#e85c51")
vim.cmd("highlight RainbowDelimiterYellow guifg=#b58900")
vim.cmd("highlight RainbowDelimiterBlue guifg=#5a93aa")
vim.cmd("highlight RainbowDelimiterOrange guifg=#fd9353")
vim.cmd("highlight RainbowDelimiterGreen guifg=#859900")
vim.cmd("highlight RainbowDelimiterViolet guifg=#6c71c4")
vim.cmd("highlight RainbowDelimiterCyan guifg=#2aa198")

require "rainbow-delimiters.setup".setup {
  highlight = {
    "RainbowDelimiterRed",
    "RainbowDelimiterYellow",
    "RainbowDelimiterBlue",
    "RainbowDelimiterOrange",
    "RainbowDelimiterGreen",
    "RainbowDelimiterViolet",
    "RainbowDelimiterCyan",
  },
}
