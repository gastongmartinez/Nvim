local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- General
vim.g.mapleader = " "
map("i", "jk", "<ESC>")
map("i", "kj", "<ESC>")

-- LSP Saga
map("n", "<C-j>", ":Lspsaga diagnostic_jump_next<CR>")
map("n", "K", ":Lspsaga hover_doc<CR>")
map("n", "<C-k>", ":Lspsaga signature_help<CR>")
map("n", "gh", ":Lspsaga lsp_finder<CR>")
