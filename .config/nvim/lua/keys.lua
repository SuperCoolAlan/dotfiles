vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('v', '<', '<gv', {noremap = true})
vim.keymap.set('v', '>', '>gv', {noremap = true})
-- Move selection up or down
vim.keymap.set('x', 'K', ':move \'<-2<cr>gv=gv', {noremap = true})
vim.keymap.set('x', 'J', ':move \'>+1<cr>gv=gv', {noremap = true})
-- Lsp Functions
vim.keymap.set("n", "<leader>gd", ":lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("n", "<leader>gi", ":lua vim.lsp.buf.implementation()<CR>")
vim.keymap.set("n", "K", ":lua vim.lsp.buf.hover()<CR>")
vim.keymap.set("n", "<leader>rn", ":lua vim.lsp.buf.rename()<CR>")
vim.keymap.set("n", "<leader>gr", ":lua vim.lsp.buf.references()<CR>")


-- Diagnostics

local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go({ severity = severity })
  end
end

-- Diagnostics & Error Helpers
vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
vim.keymap.set("n", "]d", diagnostic_goto(true), { desc = "Next Diagnostic" })
vim.keymap.set("n", "[d", diagnostic_goto(false), { desc = "Prev Diagnostic" })
vim.keymap.set("n", "]e", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
vim.keymap.set("n", "[e", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
vim.keymap.set("n", "]w", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
vim.keymap.set("n", "[w", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })

-- Don't Cut
--

vim.keymap.set({'n', 'v'}, 'd', '"_d', { noremap = true })
vim.keymap.set('n', 'dd', '"_dd', { noremap = true })

-- Base64 Encode and Decode
vim.keymap.set('n', '<leader>64e', "viWc<c-r>=system('base64 -w 0', @\")<cr><esc>")
vim.keymap.set('n', '<leader>64d', "viWc<c-r>=system('base64 -d', @\")<cr><esc>")
vim.keymap.set('v', '<leader>64e', "c<c-r>=system('base64 -w 0', @\")<cr><esc>")
vim.keymap.set('v', '<leader>64d', "c<c-r>=system('base64 -d', @\")<cr><esc>")

-- Claude Code DAT AI
vim.keymap.set('n', '<leader>cc', '<cmd>ClaudeCode<CR>', { desc = 'Toggle Claude Code' })

