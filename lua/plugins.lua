local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path })
  vim.cmd("packadd packer.nvim")
end

vim.cmd([[packadd packer.nvim]])
require("packer").startup(function(use)
  use("wbthomason/packer.nvim")
  use({ "glepnir/dashboard-nvim", config = "require('gm/dashboard')" })
  use({ "navarasu/onedark.nvim", config = "require('gm/onedark')" })
  use({ "romgrk/barbar.nvim", requires = { "kyazdani42/nvim-web-devicons" }, config = "require('gm/barbar')" })
  use({
    "hoob3rt/lualine.nvim",
    event = "BufWinEnter",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
    config = "require('lualine').setup {options = {theme = 'onedark'}}",
  })
  use({ "folke/which-key.nvim", event = "BufWinEnter", config = "require('gm/whichkey')" })
  use({ "kyazdani42/nvim-tree.lua", cmd = "NvimTreeToggle", config = "require('nvim-tree').setup {auto_close = true}" })
  use({
    "nvim-treesitter/nvim-treesitter",
    event = "BufWinEnter",
    config = "require('nvim-treesitter.configs').setup {ensure_installed = { 'bash', 'c', 'c_sharp', 'cmake', 'comment', 'cpp', 'css', 'dockerfile', 'go', 'html', 'java', 'javascript', 'json', 'json5', 'latex', 'lua', 'php', 'python', 'regex', 'rust', 'scss', 'typescript', 'yaml'}, highlight = {enable = true}, indent = {enable = true}}",
    run = ":TSUpdate",
  })
  use({ "nvim-treesitter/playground", after = "nvim-treesitter" })
  use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } } })
  use({ "nvim-telescope/telescope-file-browser.nvim", config = "require('gm/filebrowser')" })
  use({ "norcalli/nvim-colorizer.lua", config = "require('colorizer').setup {}" })
  use({
    "lukas-reineke/indent-blankline.nvim",
    config = "require('indent_blankline').setup {char = '|', buftype_exclude = {'terminal', 'help'}, indentLine_fileTypeExclude = {'dashboard'}}",
    event = "BufRead",
  })
  use({ "hrsh7th/nvim-cmp", config = "require('gm/cmpconf')" })
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-vsnip")
  use("hrsh7th/vim-vsnip")
  use("hrsh7th/cmp-nvim-lua")
  use("hrsh7th/cmp-latex-symbols")
  use("hrsh7th/cmp-path")
  use("onsails/lspkind-nvim")
  use({ "tami5/lspsaga.nvim", config = "require('gm/saga')" })
  use("williamboman/nvim-lsp-installer")
  use({ "neovim/nvim-lspconfig", config = "require('gm/lspconf')" })
  use("b3nj5m1n/kommentary")
  use({ "windwp/nvim-autopairs", config = "require('nvim-autopairs').setup {}", after = "nvim-cmp" })
  use({ "jose-elias-alvarez/null-ls.nvim", config = "require('gm/null-ls')" })
  use({
    "TimUntersberger/neogit",
    requires = { "nvim-lua/plenary.nvim" },
    cmd = "Neogit",
    config = "require('neogit').setup {disable_commit_confirmation = true, integrations = {diffview = true}}",
  })
  use({ "sindrets/diffview.nvim", cmd = "DiffviewOpen" })
  use({ "lewis6991/gitsigns.nvim", event = "BufReadPre" })
  use({ "akinsho/toggleterm.nvim", tag = 'v1.*', config = "require('gm/toggleterm')" })
  use ({ "davidgranstrom/nvim-markdown-preview" })
end)
