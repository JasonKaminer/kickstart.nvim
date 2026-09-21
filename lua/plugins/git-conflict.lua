return {
  "akinsho/git-conflict.nvim",
  version = "*",
  event = "VeryLazy",
  config = function()
    require("git-conflict").setup({
      default_mappings = false,
    })
    vim.keymap.set("n", "<leader>Co", "<Plug>(git-conflict-ours)")
    vim.keymap.set("n", "<leader>Ct", "<Plug>(git-conflict-theirs)")
    vim.keymap.set("n", "<leader>Cb", "<Plug>(git-conflict-both)")
    vim.keymap.set("n", "<leader>C0", "<Plug>(git-conflict-none)")
    vim.keymap.set("n", "<leader>Cq", "<Plug>(git-conflict-list-qf)")
    vim.keymap.set("n", "<leader>Cr", "<Plug>(git-conflict-refresh)")
    vim.keymap.set("n", "<leader>C[", "<Plug>(git-conflict-prev-conflict)")
    vim.keymap.set("n", "<leader>C]", "<Plug>(git-conflict-next-conflict)")
  end,
}
