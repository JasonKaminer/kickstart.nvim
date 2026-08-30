-- ThePrimeagen/refactoring.nvim
-- https://github.com/ThePrimeagen/refactoring.nvim

-- Add dependencies first
vim.pack.add { 'https://github.com/nvim-lua/plenary.nvim' }
vim.pack.add { 'https://github.com/nvim-treesitter/nvim-treesitter' }
vim.pack.add { 'https://github.com/lewis6991/async.nvim' }

-- Add main plugin
vim.pack.add { 'https://github.com/ThePrimeagen/refactoring.nvim' }

-- Setup and keymaps
require('refactoring').setup()

vim.keymap.set('x', '<leader>re', ':Refactor extract ')
vim.keymap.set('x', '<leader>rf', ':Refactor extract_to_file ')

vim.keymap.set('x', '<leader>rv', ':Refactor extract_var ')

vim.keymap.set({ 'n', 'x' }, '<leader>ri', ':Refactor inline_var')

vim.keymap.set('n', '<leader>rI', ':Refactor inline_func')

vim.keymap.set('n', '<leader>rb', ':Refactor extract_block')
vim.keymap.set('n', '<leader>rbf', ':Refactor extract_block_to_file')

-- load refactoring Telescope extension (deferred, optional)
vim.schedule(function()
  local ok, _ = pcall(function()
    require('telescope').load_extension 'refactoring'
  end)
  if ok then
    vim.keymap.set({ 'n', 'x' }, '<leader>rr', function()
      require('telescope').extensions.refactoring.refactors()
    end)
  end
end)
