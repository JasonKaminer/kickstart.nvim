-- git-conflict
-- https://github.com/akinsho/git-conflict.nvim

vim.pack.add {
  'https://github.com/akinsho/git-conflict.nvim',
}

vim.schedule(function()
  ---@diagnostic disable-next-line: missing-fields
  require('git-conflict').setup {
    default_mappings = false,
  }

  vim.keymap.set('n', '<leader>co', '<Plug>(git-conflict-ours)')
  vim.keymap.set('n', '<leader>ct', '<Plug>(git-conflict-theirs)')
  vim.keymap.set('n', '<leader>cb', '<Plug>(git-conflict-both)')
  vim.keymap.set('n', '<leader>c0', '<Plug>(git-conflict-none)')
  vim.keymap.set('n', '<leader>cq', '<Plug>(git-conflict-list-qf)')
  vim.keymap.set('n', '<leader>cr', '<Plug>(git-conflict-refresh)')
  vim.keymap.set('n', '<leader>c[', '<Plug>(git-conflict-prev-conflict)')
  vim.keymap.set('n', '<leader>c]', '<Plug>(git-conflict-next-conflict)')
end)
