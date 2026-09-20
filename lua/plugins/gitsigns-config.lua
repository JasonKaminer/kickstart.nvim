-- Override LazyVim's gitsigns to enable blame by default
return {
  "lewis6991/gitsigns.nvim",
  opts = function(_, opts)
    opts.current_line_blame = true
    opts.current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = "eol",
      delay = 100,
    }
    return opts
  end,
}
