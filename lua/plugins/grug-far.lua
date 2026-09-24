return {
  "MagicDuck/grug-far.nvim",
  config = function()
    require("grug-far").setup({
      keymaps = {
        replace = { n = "<leader>R" }, -- Maps replace action to leader + r inside the grug-far buffer
      },
    })
  end,
}
