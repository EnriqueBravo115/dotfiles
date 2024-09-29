vim.g.mapleader = " "
vim.g.maplocalleader = ","
local map = vim.keymap.set
local jdtls = require("jdtls")
local set = vim.keymap.set

-- COMMANDS
vim.keymap.set("n", "<leader>e", "<cmd>:NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>")
vim.keymap.set("v", "<leader>y", '"+y<CR>')
vim.keymap.set("n", "<C-p>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-q>", "<cmd>cprev<CR>zz")

vim.keymap.set("n", "<leader>ñ", "<cmd>:MarkdownPreview<CR>")

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_exec([[
  tnoremap <esc><esc> <C-\><C-n>:wincmd w<CR>
]], false)
