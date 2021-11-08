local function map(mode, lhs, rhs, opts)
  local options = {noremap = true, silent = true}
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- General
vim.g.mapleader = " "
map ('i', 'jk', '<ESC>')
map ('n', '<Leader>ec', ':tabedit $MYVIMRC<CR>')

-- Dashboard
map ('n', '<Leader>ss', ':<C-u>SessionSave<CR>')
map ('n', '<Leader>sl', ':<C-u>SessionLoad<CR>')
map ('n', '<Leader>fr', ':DashboardFindHistory<CR>')
map ('n', '<Leader>ff', ':DashboardFindFile<CR>')
map ('n', '<Leader>tc', ':DashboardChangeColorscheme<CR>')
map ('n', '<Leader>fa', ':DashboardFindWord<CR>')
map ('n', '<Leader>fb', ':DashboardJumpMark<CR>')
map ('n', '<Leader>cn', ':DashboardNewFile<CR>')

-- Tabs
-- Move to previous/next
map('n', '<Leader>bp', ':BufferPrevious<CR>')
map('n', '<Leader>bn', ':BufferNext<CR>')
-- Re-order to previous/next
map('n', '<Leader>b<', ':BufferMovePrevious<CR>')
map('n', '<Leader>b>', ':BufferMoveNext<CR>')
-- Goto buffer in position...
map('n', '<Leader>b1', ':BufferGoto 1<CR>')
map('n', '<Leader>b2', ':BufferGoto 2<CR>')
map('n', '<Leader>b3', ':BufferGoto 3<CR>')
map('n', '<Leader>b4', ':BufferGoto 4<CR>')
map('n', '<Leader>b5', ':BufferGoto 5<CR>')
map('n', '<Leader>b6', ':BufferGoto 6<CR>')
map('n', '<Leader>b7', ':BufferGoto 7<CR>')
map('n', '<Leader>b8', ':BufferGoto 8<CR>')
map('n', '<Leader>b9', ':BufferGoto 9<CR>')
map('n', '<Leader>b0', ':BufferLast<CR>')
-- Close buffer
map('n', '<Leader>bc', ':BufferClose<CR>')
-- Magic buffer-picking mode
map('n', '<Leader>bbp', ':BufferPick<CR>')
-- Sort automatically by...
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>')
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>')
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>')

-- NvimTree
map('n', '<Space>tt', ':NvimTreeToggle<CR>')
map('n', '<Space>tf', ':NvimTreeFocus<CR>')

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>')
map('n', '<leader>fg', ':Telescope live_grep<CR>')
map('n', '<leader>fb', ':Telescope buffers<CR>')
map('n', '<leader>fh', ':Telescope help_tags<CR>')

-- LSP Saga
map('n', '<C-j>', ':Lspsaga diagnostic_jump_next<CR>')
map('n', 'K', ':Lspsaga hover_doc<CR>')
map('n', '<C-k>', ':Lspsaga signature_help<CR>')
map('n', 'gh', ':Lspsaga lsp_finder<CR>')

-- Formatter
map('n', '<leader>F', ':Format<CR>')

-- Git
map('n', '<leader>gg', ':Neogit<cr>')
map('n', '<leader>gd', ':DiffviewOpen<cr>')
map('n', '<leader>gD', ':DiffviewOpen main<cr>')
map('n', '<leader>gl', ':Neogit log<cr>')
map('n', '<leader>gp', ':Neogit push<cr>')

