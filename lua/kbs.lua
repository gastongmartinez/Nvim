local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- General
vim.g.mapleader = " "
map("i", "jk", "<ESC>")
map("i", "kj", "<ESC>")
map("n", "<C-h>", "<C-w><C-h>")
map("n", "<C-j>", "<C-w><C-j>")
map("n", "<C-k>", "<C-w><C-k>")
map("n", "<C-l>", "<C-w><C-l>")
