-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3

-- do not use system clipboard always
-- see keymaps.lua for specifc access to it
vim.opt.clipboard = ""
