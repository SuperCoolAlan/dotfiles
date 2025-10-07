local Plug = vim.fn['plug#']
vim.call('plug#begin')

-- cmp section
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

-- general section

Plug 'williamboman/mason.nvim'
Plug 'L3MON4D3/LuaSnip.nvim'
Plug 'numToStr/Navigator.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'neanias/everforest-nvim'
Plug 'tpope/vim-surround'
Plug 'kdheepak/lazygit.nvim'
-- Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-lualine/lualine.nvim'
Plug 'tpope/vim-commentary'
vim.call('plug#end')

-- require block


require('plugins.telescope')
require('plugins.nvim-lspconfig')
require('plugins.telescope-file-browser')
require('plugins.nvim-treesitter')
require('plugins.lazygit')
require('plugins.mason')
require("plugins.lualine")
require('plugins.cmp')
