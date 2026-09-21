return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- Configure pylsp to use ruff for linting/formatting and disable pycodestyle
      opts.servers.pylsp = {
        settings = {
          pylsp = {
            plugins = {
              pycodestyle = { enabled = false },
              ruff = { enabled = true },
            },
          },
        },
      }
    end,
  },
}

