local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

vim.cmd [[packadd packer.nvim]]
require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {'glepnir/dashboard-nvim', config = "require('dashboard')"}
  use {'navarasu/onedark.nvim', config = "require('onedark').setup {}"}
  use {'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'},
    config = "require('barbar')"}
  use {'hoob3rt/lualine.nvim', 
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = "require('lualine').setup {options = {theme = 'onedark'}}"}
  --use 'folke/which-key.nvim'
  --use 'kyazdani42/nvim-tree.lua'
  --use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  --use 'nvim-treesitter/playground'
  --use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}}
  --use 'norcalli/nvim-colorizer.lua'
  --use 'lukas-reineke/indent-blankline.nvim'
  --use 'williamboman/nvim-lsp-installer'
  --use 'neovim/nvim-lspconfig'
  --use 'hrsh7th/cmp-nvim-lsp'
  --use 'hrsh7th/cmp-buffer'
  --use 'hrsh7th/nvim-cmp'
  --use 'hrsh7th/cmp-vsnip'
  --use 'hrsh7th/vim-vsnip'
  --use 'hrsh7th/cmp-nvim-lua'
  --use 'hrsh7th/cmp-latex-symbols'
  --use 'onsails/lspkind-nvim'
  --use 'glepnir/lspsaga.nvim'
  --use 'mhartington/formatter.nvim'
  --use 'b3nj5m1n/kommentary'
  --use 'windwp/nvim-autopairs'
  --use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
  --use 'sindrets/diffview.nvim'
  --use 'lewis6991/gitsigns.nvim'
end)
