-- Disable in-line virtual text errors
-- LSP Config
require('mason').setup()
require('mason-lspconfig').setup()
local status_ok, lsp = pcall(require, 'lspconfig')
if not status_ok then
  return
end
vim.diagnostic.config({virtual_text = false})

