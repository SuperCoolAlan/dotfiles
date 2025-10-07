local Plug = vim.fn['plug#']
vim.call('plug#begin')

-- cmp section
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-omni'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/nvim-cmp'

-- general section

Plug 'williamboman/mason.nvim'
Plug 'mikavilpas/yazi.nvim'
Plug 'SirVer/ultisnips'
Plug 'numToStr/Navigator.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'greggh/claude-code.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'rafamadriz/friendly-snippets'
Plug 'echasnovski/mini.nvim'
Plug 'folke/snacks.nvim'
Plug 'onsails/lspkind.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'neanias/everforest-nvim'
Plug 'kdheepak/lazygit.nvim'
-- Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-lualine/lualine.nvim'
Plug 'tpope/vim-commentary'
vim.call('plug#end')

-- require block

require('plugins.yazi')
require('plugins.cmp')
require('plugins.telescope')
require('plugins.telescope-file-browser')
require('plugins.nvim-lspconfig')
-- require('plugins.nvim-tree')
require('plugins.nvim-treesitter')
require('plugins.lazygit')
require("plugins.lualine")
require('mini.surround').setup()
require('plugins.mason')
require('plugins.claude-code')

