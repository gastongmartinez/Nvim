-- Opciones
vim.o.number = true
vim.o.vb = false
vim.o.syntax = "on"
vim.wo.relativenumber = true
vim.wo.cursorline = true
vim.bo.autoindent = true
vim.bo.expandtab = true
vim.bo.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smarttab = true
vim.bo.softtabstop = 4
vim.o.mouse = "a"
vim.o.ignorecase = true
vim.o.smartcase = true
vim.wo.wrap = false
vim.o.ruler = true
vim.o.clipboard = "unnamedplus"
vim.o.termguicolors = true
vim.o.completeopt = "menu,menuone,noselect"
vim.o.splitright = true
vim.o.splitbelow = true
if vim.fn.has("win32") == 1 then
  vim.o.shell = "pwsh.exe"
end

-- Reconocimiento de tipo de archivo
vim.cmd("filetype on")
vim.cmd("filetype plugin on")
vim.cmd("filetype indent on")

vim.g.indentLine_fileTypeExclude = { "dashboard" }
vim.g.kommentary_create_default_mappings = true

-- TreeSitter Folding
vim.o.foldlevel = 10
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
