return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    -- Map a key specifically for running a target formatter
    vim.keymap.set("n", "<leader>cFx", function()
      require("conform").format({ formatters = { "prettier" } })
    end, { desc = "Force Prettier Format" })
  end,
}
