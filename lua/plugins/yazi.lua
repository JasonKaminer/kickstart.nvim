return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("yazi").setup({
      open_for_dir = false,
      keymaps = {
        show_help = "<f1>",
      },
    })
    vim.keymap.set({ "n", "v" }, "<leader>y", "<cmd>Yazi<cr>", { desc = "[Y]azi" })
    vim.keymap.set({ "n", "v" }, "<c-up>", "<cmd>Yazi toggle<cr>", { desc = "Resume the last yazi session" })
  end,
}
