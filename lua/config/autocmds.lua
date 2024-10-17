-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("BufWinEnter", {
  pattern = "*.overlay",
  callback = function()
    vim.bo.filetype = "dts"
  end,
})

vim.api.nvim_create_autocmd("BufWinEnter", {
  pattern = "*.zap",
  callback = function()
    vim.bo.filetype = "json"
  end,
})
