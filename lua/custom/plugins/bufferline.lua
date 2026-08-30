 -- bufferline recommended for vscode theme in https://github.com/mofiqul/vscode.nvim

vim.pack.add({ 'https://github.com/nvim-tree/nvim-web-devicons'})
vim.pack.add({ 'https://github.com/akinsho/bufferline.nvim' })
vim.opt.termguicolors = true
require("bufferline").setup{}

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<S-l>', '<cmd>BufferLineCycleNext<CR>', opts)
vim.keymap.set('n', '<S-h>', '<cmd>BufferLineCyclePrev<CR>', opts)
vim.keymap.set("n", "<leader>bh", "<cmd>BufferLineMovePrev<CR>", { desc = "Move buffer left" })
vim.keymap.set("n", "<leader>bl", "<cmd>BufferLineMoveNext<CR>", { desc = "Move buffer right" })
vim.keymap.set("n", "<leader>bp", "<cmd>BufferLineTogglePin<CR>", { desc = "Toggle pin buffer" })
vim.keymap.set('n', '<leader>bd', '<Cmd>bdelete<CR>', { desc = 'Delete buffer' })
