-- olimorris/codecompanion.nvim
-- https://github.com/olimorris/codecompanion.nvim
vim.pack.add { 'https://github.com/olimorris/codecompanion.nvim' }
require("codecompanion").setup({
  opts = {
    log_level = "DEBUG", -- or "TRACE"
  }
})
require('custom.plugins.codecompanion.fidget-spinner'):init()

vim.keymap.set("n", "<leader>CC", function() require('codecompanion').chat() end, { desc = "Open CodeCompanion Chat" })

-- return {
--   {
--     'olimorris/codecompanion.nvim',
--     dependencies = {
--       'nvim-lua/plenary.nvim',
--       'nvim-treesitter/nvim-treesitter',
--       'j-hui/fidget.nvim',
--     },
--     opts = {
--       ---@module "codecompanion"
--       ---@type CodeCompanion.Config
--       strategies = {
--         chat = {
--           tools = {
--             opts = { wait_timeout = 3600000 },
--           },
--           adapter = {
--             name = 'copilot',
--             model = 'gpt-5-mini',
--           },
--         },
--       },
--     },
--     keys = {
--       {'<leader>CC', function() require('codecompanion').chat() end, desc = 'Open CodeCompanion Chat', mode = { 'n' }},
--       {'<leader>CT', function() require('codecompanion').toggle() end, desc = 'Toggle CodeCompanion Chat', mode = { 'n' }},
--       {'<leader>CA', function() require('codecompanion').actions() end, desc = 'Open CodeCompanion Actions', mode = { 'n' }},
--     },
--     init = function()
--       require('custom.plugins.codecompanion.fidget-spinner'):init()
--     end,
--   },
-- }
