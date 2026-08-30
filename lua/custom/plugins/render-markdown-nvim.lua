-- MeanderingProgrammer/render-markdown.nvim
-- https://github.com/MeanderingProgrammer/render-markdown.nvim

-- Add dependencies first
vim.pack.add { 'https://github.com/nvim-treesitter/nvim-treesitter' }
vim.pack.add { 'https://github.com/echasnovski/mini.nvim' }

-- Add main plugin
vim.pack.add { 'https://github.com/MeanderingProgrammer/render-markdown.nvim' }

-- Setup with opts
---@module 'render-markdown'
---@type render.md.UserConfig
require('render-markdown').setup({})

-- Setup filetype-specific loading (vim.pack doesn't support ft filtering)
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'markdown', 'codecompanion' },
  callback = function()
    require('render-markdown').enable()
  end,
  desc = 'Enable render-markdown for markdown and codecompanion files'
})
