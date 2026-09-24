return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    table.insert(opts.sections.lualine_x, {
      "filename",
      path = 4, -- 0 = just filename, 1 = relative path, 2 = absolute path, 3 = absolute path with tilde, 4 = filename and relative path
    })
  end,
}
