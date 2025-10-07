-- General Settings
-- Pane Options
vim.opt.splitright = true

-----------------------
-- Editor Appearance --
-----------------------


-- change dir to opened buffer
vim.opt.autochdir = true

-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true
------------
-- Colors --
------------


vim.opt.termguicolors = true

vim.cmd.colorscheme('everforest')
vim.g.everforest_background = 'hard'
-- Incrementally highlight pattern matching while typing
vim.opt.incsearch = true

-- How do we treat cases
vim.opt.ignorecase = true
vim.opt.smartcase = true
---------------
-- Searching --
---------------

-- Don't leave matches highlighted
vim.opt.hlsearch = false


-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- Use system clipboard
vim.opt.clipboard = vim.opt.clipboard + 'unnamedplus'

-------------------
-- Undo Settings --
-------------------

-- Backups are handled by UndoTree, give it access to long-running undos
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.opt.undofile = true
