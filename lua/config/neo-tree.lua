-- Neo-tree configuration
-- Show hidden files by default

return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        mappings = {
          ["H"] = "toggle_hidden",
        },
      },
      filesystem = {
        filtered_items = {
          visible = true, -- Show hidden files by default
          hide_dotfiles = false,
          hide_gitignored = true,
        },
      },
    },
  },
}
