
  vim.pack.add { gh 'rebelot/kanagawa.nvim' }
  local dragon_ui_bg = {
    bg       = "#181616",  -- dragonBlack3
    bg_dim   = "#0d0c0c",  -- dragonBlack0
    bg_gutter = "#282727", -- dragonBlack4
    bg_m1    = "#1D1C19",  -- dragonBlack2
    bg_m2    = "#12120f",  -- dragonBlack1
    bg_m3    = "#0d0c0c",  -- dragonBlack0
    bg_p1    = "#282727",  -- dragonBlack4
    bg_p2    = "#393836",  -- dragonBlack5
  }

  require('kanagawa').setup({
    theme = "wave",
    colors = {
      theme = {
        wave = {
          ui = dragon_ui_bg
        }
      }
    }
  })
