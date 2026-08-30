-- snacks.nvim
-- https://github.com/folke/snacks.nvim

vim.pack.add({
  'https://github.com/folke/snacks.nvim',
})

local snacks_opts = {
  input = { enabled = true },
  picker = { enabled = true },
  notifier = { enabled = true },
  quickfile = { enabled = true },
  -- scope = { enabled = true },
  -- scroll = { enabled = true },
  words = { enabled = true },
  bufdelete = { enabled = true },
  lazygit = {
    enabled = true,
    configure = true,
    config = {
      os = {
        edit = '[ -z "$NVIM" ] && (nvim -- {{filename}}) || (nvim --server "$NVIM" --remote-send "q" && nvim --server "$NVIM" --remote {{filename}})',
        editAtLine = '[ -z "$NVIM" ] && (nvim +{{line}} -- {{filename}}) || (nvim --server "$NVIM" --remote-send "q" &&  nvim --server "$NVIM" --remote {{filename}} && nvim --server "$NVIM" --remote-send ":{{line}}<CR>")',
        editAtLineAndWait = "nvim +{{line}} {{filename}}",
        openDirInEditor = '[ -z "$NVIM" ] && (nvim -- {{dir}}) || (nvim --server "$NVIM" --remote-send "q" && nvim --server "$NVIM" --remote {{dir}})',
      },
      gui = {
        nerdFontsVersion = "3",
      },
    },
  },
  scratch = { enabled = true },
}

require("snacks").setup(snacks_opts)

local Snacks = require("snacks")

vim.keymap.set("n", "<leader>gb", function() Snacks.picker.git_branches() end, { desc = "Git Branches" })
vim.keymap.set("n", "<leader>gl", function() Snacks.picker.git_log() end, { desc = "Git Log" })
vim.keymap.set("n", "<leader>gL", function() Snacks.picker.git_log_line() end, { desc = "Git Log Line" })
vim.keymap.set("n", "<leader>gs", function() Snacks.picker.git_status() end, { desc = "Git Status" })
vim.keymap.set("n", "<leader>gS", function() Snacks.picker.git_stash() end, { desc = "Git Stash" })
vim.keymap.set("n", "<leader>gd", function() Snacks.picker.git_diff() end, { desc = "Git Diff (Hunks)" })
vim.keymap.set("n", "<leader>gdB", function()
  Snacks.picker.git_branches({
    title = "Select Branch to Diff Against",
    confirm = function(picker, item)
      picker:close()
      if item and item.text then
        -- Clean up branch string (removes * indicating current branch)
        local branch = item.text:match("^%*?%s*([%w%-%.%_//]+)")
        if branch then
          Snacks.picker.git_diff({ base = branch })
        end
      end
    end,
  })
end, { desc = "Git Diff against chosen branch" })
vim.keymap.set("n", "<leader>gf", function() Snacks.picker.git_log_file() end, { desc = "Git Log File" })

vim.keymap.set("n", "<leader>.", function() Snacks.scratch() end, { desc = "Toggle Scratch Buffer" })
vim.keymap.set("n", "<leader>S", function() Snacks.scratch.select() end, { desc = "Select Scratch Buffer" })
vim.keymap.set("n", "<leader>n", function() Snacks.notifier.show_history() end, { desc = "Notification History" })
vim.keymap.set("n", "<leader>bd", function() Snacks.bufdelete() end, { desc = "Delete Buffer" })
vim.keymap.set("n", "<leader>gg", function() Snacks.lazygit({ cwd = Snacks.git.get_root() }) end, { desc = "Lazygit" })
vim.keymap.set("n", "<leader>un", function() Snacks.notifier.hide() end, { desc = "Dismiss All Notifications" })
