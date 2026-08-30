-- auto-session
-- https://github.com/rmagatti/auto-session

vim.pack.add({
  'https://github.com/rmagatti/auto-session',
})

require('auto-session').setup({
  suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
  -- log_level = 'debug',
})

vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

vim.keymap.set('n', '<leader>wr', '<cmd>SessionSearch<CR>', { desc = 'Session search' })
vim.keymap.set('n', '<leader>ww', '<cmd>SessionSave<CR>', { desc = 'Save session' })
vim.keymap.set('n', '<leader>wa', '<cmd>SessionToggleAutoSave<CR>', { desc = 'Toggle autosave' })
