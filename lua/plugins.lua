local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path })
  vim.cmd("packadd packer.nvim")
end

vim.cmd([[packadd packer.nvim]])
require("packer").startup(function(use)
  use("wbthomason/packer.nvim")
  use({ "glepnir/dashboard-nvim", config = "require('setup/dashboard')" })
  use({ "navarasu/onedark.nvim", config = "require('onedark').setup {}" })
  use({ "romgrk/barbar.nvim", requires = { "kyazdani42/nvim-web-devicons" }, config = "require('setup/barbar')" })
  use({ "hoob3rt/lualine.nvim", event = "BufWinEnter", requires = { "kyazdani42/nvim-web-devicons", opt = true }, config = "require('lualine').setup {options = {theme = 'onedark'}}", })
  use({ "folke/which-key.nvim", event = "BufWinEnter", config = "require('setup/whichkey')" })
  use({ "kyazdani42/nvim-tree.lua", cmd = "NvimTreeToggle", config = "require('nvim-tree').setup {auto_close = true}" })
  use({
    "nvim-treesitter/nvim-treesitter", event = "BufWinEnter",
    config = "require('nvim-treesitter.configs').setup {ensure_installed = { 'bash', 'c', 'c_sharp', 'cmake', 'comment', 'cpp', 'css', 'dockerfile', 'go', 'html', 'java', 'javascript', 'json', 'json5', 'latex', 'lua', 'php', 'python', 'regex', 'rust', 'scss', 'typescript', 'yaml'}, highlight = {enable = true}, indent = {enable = true}}",
    run = ":TSUpdate",
  })
  use({ "nvim-treesitter/playground", after = "nvim-treesitter" })
  use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } } })
  use({ "norcalli/nvim-colorizer.lua", config = "require('colorizer').setup {}", event = "BufRead" })
  use({ "lukas-reineke/indent-blankline.nvim", config = "require('indent_blankline').setup {char = '|', buftype_exclude = {'terminal', 'help'}, indentLine_fileTypeExclude = {'dashboard'}}", event = "BufRead" })
  use({ "hrsh7th/nvim-cmp", config = "require('setup/cmpconf')" })
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-vsnip")
  use("hrsh7th/vim-vsnip")
  use("hrsh7th/cmp-nvim-lua")
  use("hrsh7th/cmp-latex-symbols")
  use("onsails/lspkind-nvim")
  use({ "glepnir/lspsaga.nvim", config = "require('setup/saga')" })
  use("williamboman/nvim-lsp-installer")
  use({ "neovim/nvim-lspconfig", config = "require('setup/lspconf')" })
  use({ "mhartington/formatter.nvim", event = "BufWritePre", config = "require('setup/format')" })
  use("b3nj5m1n/kommentary")
  use({ "windwp/nvim-autopairs", config = "require('nvim-autopairs').setup {}", after = "nvim-cmp" })
  use({ "TimUntersberger/neogit", requires = { "nvim-lua/plenary.nvim" }, cmd = "Neogit", config = "require('neogit').setup {disable_commit_confirmation = true, integrations = {diffview = true}}", })
  use({"sindrets/diffview.nvim", cmd = "DiffviewOpen"})
  use({"lewis6991/gitsigns.nvim", event = "BufReadPre"})
end)
