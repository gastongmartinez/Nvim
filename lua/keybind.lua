local function map(mode, lhs, rhs, opts)
  local options = {noremap = true, silent = true}
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- General
vim.g.mapleader = " "
map ('i', 'jk', '<ESC>')
map ('i', 'kj', '<ESC>')
--map ('n', '<Leader>ec', ':tabedit $MYVIMRC<CR>')

-- LSP Saga
map('n', '<C-j>', ':Lspsaga diagnostic_jump_next<CR>')
map('n', 'K', ':Lspsaga hover_doc<CR>')
map('n', '<C-k>', ':Lspsaga signature_help<CR>')
map('n', 'gh', ':Lspsaga lsp_finder<CR>')

-- Dashboard
--map ('n', '<Leader>ss', ':<C-u>SessionSave<CR>')
--map ('n', '<Leader>sl', ':<C-u>SessionLoad<CR>')
--map ('n', '<Leader>fr', ':DashboardFindHistory<CR>')
--map ('n', '<Leader>ff', ':DashboardFindFile<CR>')
--map ('n', '<Leader>tc', ':DashboardChangeColorscheme<CR>')
--map ('n', '<Leader>fa', ':DashboardFindWord<CR>')
--map ('n', '<Leader>fb', ':DashboardJumpMark<CR>')
--map ('n', '<Leader>cn', ':DashboardNewFile<CR>')