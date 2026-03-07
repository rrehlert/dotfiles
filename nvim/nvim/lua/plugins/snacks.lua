return {
  "folke/snacks.nvim",
  opts = {
    -- explorer = { enabled = false },
    -- keys = {
    --   { "<leader>e", false },
    --   { "<leader>fe", false },
    --   { "<leader>fE", false },
    --   { "<leader>E", false },
    -- },
    picker = {
      sources = {
        explorer = {
          git_status = true,
          git_status_open = true,
          git_untracked = true,
          hidden = true,
          ignored = true,
        },
      },
    },
  },
}
