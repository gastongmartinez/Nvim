local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- General
vim.g.mapleader = " "
map("i", "jk", "<ESC>")
map("i", "kj", "<ESC>")
