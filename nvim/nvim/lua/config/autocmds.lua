-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
-- Allow git operations to work per-file by using each file's actual git root
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    local file = vim.api.nvim_buf_get_name(0)
    if file == "" then
      return
    end

    -- Find the git root for this specific file
    local git_root = vim.fn.systemlist(
      "git -C " .. vim.fn.shellescape(vim.fn.fnamemodify(file, ":h")) .. " rev-parse --show-toplevel"
    )[1]
    if vim.v.shell_error == 0 and git_root then
      -- Store per-buffer git root for use by other tools
      vim.b.git_root = git_root
    end
  end,
})
