-- zbirenbaum/copilot.lua
-- https://github.com/zbirenbaum/copilot.lua

-- return {
--   'github/copilot.vim',
-- }

return {
  'zbirenbaum/copilot.lua',
  event = 'InsertEnter',
  keys = {
    {'<leader>cc', function() require('copilot.suggestion').toggle_auto_trigger() end, desc = 'Toggle Copilot Suggestion Auto Trigger', mode = { 'n' }},
    {'<leader>cp', function() require('copilot.panel').toggle() end, desc = 'Toggle Copilot Panel', mode = { 'n' }},
    {'<leader>ct', function() require('copilot.command').attach({ force = true }) end, desc = 'Force Copilot Attach', mode = { 'n' }},
    {'<leader>cd', function() require('copilot.command').detach() end, desc = 'Force Copilot Detach', mode = { 'n' }},
    -- {'<C-a>', function() require('copilot.suggestion').accept() end, desc = 'Accept Copilot Suggestion', mode = { 'i' }},
    -- {'<C-x>', function() require('copilot.suggestion').dismiss() end, desc = 'Dismiss Copilot Suggestion', mode = { 'i' }},
  },
  config = function()
    require('copilot').setup({
      panel = {
        enabled = false,
      },
      suggestion = {
        enabled = true,
        auto_trigger = true,
      },
      filetypes = {
        -- yaml = true,
        -- markdown = true,
        -- gitcommit = true,
        -- gitrebase = true,
        -- sh = function ()
        --   if string.match(vim.fs.basename(vim.api.nvim_buf_get_name(0)), '^%.env.*') then
        --     -- disable for .env files
        --     return false
        --   end
        --   return true
        -- end,
        ["*"] = false,
      },
    })
  end,
}
