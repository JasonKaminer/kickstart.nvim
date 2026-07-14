-- yetone/avante.nvim
-- https://github.com/yetone/avante.nvim

return {
  "yetone/avante.nvim",
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  -- ⚠️ must add this setting! ! !
  build = vim.fn.has("win32") ~= 0
      and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
      or "make",
  event = "VeryLazy",
  version = false, -- Never set this value to "*"! Never!
  ---@module 'avante'
  ---@type avante.Config
  opts = {
    instructions_file = ".github/copilot-instructions.md",
    provider = "copilot",
    auto_suggestions_provide = nil,
    providers = {
      ---@type AvanteSupportedProvider
      copilot = {
        -- endpoint = "https://api.githubcopilot.com",
        -- model = "gpt-4o-2024-11-20",
        -- model = "gpt-5-codex",
        model = "claude-sonnet-4.5",
        -- proxy = nil, -- [protocol://]host[:port] Use this proxy
        -- allow_insecure = false, -- Allow insecure server connections
        -- timeout = 30000, -- Timeout in milliseconds
        -- context_window = 64000, -- Number of tokens to send to the model for context
        -- extra_request_body = {
        --   temperature = 0.75,
        --   max_tokens = 20480,
        -- },
      },
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    "echasnovski/mini.pick", -- for file_selector provider mini.pick
    "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
    "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    "ibhagwan/fzf-lua", -- for file_selector provider fzf
    "stevearc/dressing.nvim", -- for input provider dressing
    "folke/snacks.nvim", -- for input provider snacks
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    "zbirenbaum/copilot.lua", -- for providers='copilot'
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = false,
          },
          -- required for Windows users
          use_absolute_path = true,
          verbose = false,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
