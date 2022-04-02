local vim = vim
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
local packer_bootstrap = nil


if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd('packadd packer.nvim')

local packer = require'packer'
local util = require'packer.util'

packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})



return packer.startup(function(use)
  -- Style
  use 'marko-cerovac/material.nvim'
  use {
  'glepnir/galaxyline.nvim',
    branch = 'main'
  }
  -- LSP Plugins
  use 'neovim/nvim-lspconfig'
  use 'tami5/lspsaga.nvim'
  use 'tjdevries/nlua.nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/cmp-cmdline'
  use 'onsails/lspkind-nvim'
  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/playground'
  use 'nvim-treesitter/completion-treesitter'
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  -- Tree
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  -- Git
  use 'TimUntersberger/neogit'
  use 'sindrets/diffview.nvim'
  use 'lewis6991/gitsigns.nvim'

  -- Surround
  use 'tpope/vim-surround'
  -- Auto Pairs
  use 'windwp/nvim-autopairs'
  -- Tmux navigator
  use 'christoomey/vim-tmux-navigator'
  -- Latex
  use 'lervag/vimtex'
  -- Bufferline
  use 'akinsho/nvim-bufferline.lua'
  -- React
  use 'othree/vim-jsx'
  --Prettier
  use 'prettier/vim-prettier'
  --Sillicon
  use 'segeljakt/vim-silicon'
  --Harpoon
  use 'ThePrimeagen/harpoon'
  --Debugger
  use 'mfussenegger/nvim-dap'
  use 'theHamsta/nvim-dap-virtual-text'
  use 'nvim-telescope/telescope-dap.nvim'

   if packer_bootstrap then
     require('packer').sync()
   end
end)
