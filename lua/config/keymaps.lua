-- Keybindings migrated from kickstart.nvim
-- These are added to LazyVim's default keymaps

-- Delete without affecting clipboard
vim.keymap.set({ "n", "v" }, "d", '"_d', { noremap = true })
vim.keymap.set({ "n", "v" }, "D", '"_D', { noremap = true })
vim.keymap.set({ "n", "v" }, "<Del>", '"_x', { noremap = true })

-- Select all text
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all text" })

-- Clear highlights on search when pressing Esc
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Open diagnostic quickfix list
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Window navigation with Ctrl+hjkl
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Neo-tree toggle with backslash
vim.keymap.set("n", "\\", "<cmd>Neotree toggle<CR>", { desc = "Toggle Neo-tree" })

-- Toggle inline git blame (requires gitsigns)
vim.keymap.set("n", "<leader>tb", function()
  local ok, gitsigns = pcall(require, "gitsigns")
  if ok then
    gitsigns.toggle_current_line_blame()
  else
    vim.notify("gitsigns not available", "error")
  end
end, { desc = "[T]oggle git [b]lame line" })

-- Toggle LSP diagnostics
vim.keymap.set("n", "<leader>td", function()
  -- Initialize state if not set
  if vim.g.diagnostics_visible == nil then
    vim.g.diagnostics_visible = true
  end
  vim.g.diagnostics_visible = not vim.g.diagnostics_visible
  if vim.g.diagnostics_visible then
    vim.diagnostic.show()
    vim.notify("LSP diagnostics enabled", vim.log.levels.INFO)
  else
    vim.diagnostic.hide()
    vim.notify("LSP diagnostics disabled", vim.log.levels.INFO)
  end
end, { desc = "[T]oggle LSP [d]iagnostics" })

-- Unbind Shift+J (join lines)
vim.keymap.set("n", "J", "<nop>", { noremap = true })

vim.keymap.set('v', '<leader>f', vim.lsp.buf.format, { desc = 'LSP Format Selection' })
