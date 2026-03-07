-- In ~/.config/nvim/lua/plugins/gitsigns.lua
return {
  "lewis6991/gitsigns.nvim",
  opts = {
    -- gitsigns automatically detects each file's own .git, so this just works
    -- Make sure it's not being overridden by a wrong worktree setting
    worktrees = nil, -- let it auto-detect
    attach_to_untracked = true,
  },
}
