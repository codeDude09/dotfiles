local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'


if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)   execute 'packadd packer.nvim'
end

vim.cmd('packadd packer.nvim')

local packer = require'packer'
local util = require'packer.util'

packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})



return packer.startup(function()
  local use = use
  -- Style
  use 'morhetz/gruvbox'
  -- LSP Plugins
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion-nvim'
  use 'tjdevries/nlua.nvim'
  use 'tjdevries/lsp_extensions.nvim'
  -- Treesitter
  use {'nvim-treesitter/nvim-treesitter',
        cmd : ':TSUpdate'
      }
  use 'nvim-treesitter/playground'
  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  -- NerdTree
  -- Git
  use 'tpope/vim-fugitive'
  -- Surround
  use 'tpope/vim-surround'
  -- Auto Pairs
  use 'jiangmiao/auto-pairs'
  -- Tmux navigator
  use 'christoomey/vim-tmux-navigator'
  -- Latex
  use 'lervag/vimtex'
  -- Bufferline
  -- React
  use 'othree/vim-jsx'
  --Prettier
  use 'prettier/vim-prettier'
  end
)



