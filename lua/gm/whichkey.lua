local wk = require("which-key")
local pconf = vim.fn.stdpath("config")

local mappings = {
  b = {
    name = "Buffers",
    c = { ":BufferClose<CR>", "Close" },
    p = { ":BufferPrevious<CR>", "Previous" },
    n = { ":BufferNext<CR>", "Next" },
    P = { ":BufferMovePrevious<CR>", "Move Previous" },
    N = { ":BufferMoveNext<CR>", "Move Next" },
    ["1"] = { ":BufferGoto 1<CR>", "Go to Buffer 1" },
    ["2"] = { ":BufferGoto 2<CR>", "Go to Buffer 2" },
    ["3"] = { ":BufferGoto 3<CR>", "Go to Buffer 3" },
    ["4"] = { ":BufferGoto 4<CR>", "Go to Buffer 4" },
    ["5"] = { ":BufferGoto 5<CR>", "Go to Buffer 5" },
    ["6"] = { ":BufferGoto 6<CR>", "Go to Buffer 6" },
    ["7"] = { ":BufferGoto 7<CR>", "Go to Buffer 7" },
    ["8"] = { ":BufferGoto 8<CR>", "Go to Buffer 8" },
    ["9"] = { ":BufferGoto 9<CR>", "Go to Buffer 9" },
    ["0"] = { ":BufferLast<CR>", "Go to Last Buffer" },
  },
  f = { ":lua vim.lsp.buf.formatting_sync()<CR>", "Format File" },
  a = { ":NvimTreeToggle<CR>", "NvimTree Toggle" },
  g = {
    name = "Git",
    g = { ":Neogit<CR>", "Neogit" },
    d = { ":DiffviewOpen<CR>", "Diffview" },
    l = { ":Neogit log<CR>", "Log" },
    p = { ":Neogit push<CR>", "Push" },
  },
  t = {
    name = "Telescope",
    c = { ":Telescope file_browser path=" .. pconf .. "<CR>", "Config directory" },
    e = { ":Telescope file_browser<CR>", "File Explorer" },
    f = { ":Telescope find_files<CR>", "Find Files" },
    g = { ":Telescope live_grep<CR>", "Live Grep" },
    b = { ":Telescope buffers<CR>", "Buffers" },
    h = { ":Telescope help_tags<CR>", "Help" },
    r = { ":Telescope oldfiles<CR>", "Recent Files" },
  },
  d = {
    name = "Dashboard",
    n = { ":DashboardNewFile<CR>", "New File" },
  },
  o = { [[<cmd>lua require('onedark').toggle()<CR>]], "Toggle OneDark Theme" },
}
local opts = { prefix = "<leader>" }
wk.register(mappings, opts)
