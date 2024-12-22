-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3

-- do not use system clipboard always
-- see keymaps.lua for specifc access to it
vim.opt.clipboard = ""

-- always keep cursor centered on screen
-- for some reasons, it doesn't lag compared to remapping
-- j,k to jzz, kzz respectively
vim.opt.scrolloff = 999999

-- LazyVim default is 2, too low
vim.opt.tabstop = 4

-- Without this, I dunno but I can't use `zf` to fold as usual
vim.opt.foldmethod = "manual"

-- https://www.lazyvim.org/news#changes
-- Please, no animations
vim.g.snacks_animate = false
