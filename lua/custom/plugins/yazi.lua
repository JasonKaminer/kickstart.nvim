vim.pack.add { 'https://github.com/nvim-lua/plenary.nvim' }
vim.pack.add { 'https://github.com/mikavilpas/yazi.nvim' }
vim.keymap.set({'n', 'v'}, '<leader>y', '<cmd>Yazi<cr>', { desc = '[Y]azi' })
vim.keymap.set({'n', 'v'}, '<c-up>', '<cmd>Yazi toggle<cr>', { desc = 'Resume the last yazi session' })
require('yazi').setup {
  opts = {
    -- if you want to open yazi instead of netrw, see below for more info
    open_for_directories = true,
    keymaps = {
      show_help = "<f1>",
    },
  },
   -- 👇 if you use `open_for_directories=true`, this is recommended
  init = function()
    -- mark netrw as loaded so it's not loaded at all.
    --
    -- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
    vim.g.loaded_netrwPlugin = 1
  end,
}
