-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Do not use `gq` for LSP stuff. See https://neovim.io/doc/user/lsp.html
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    vim.bo[ev.buf].formatexpr = nil
    vim.bo[ev.buf].omnifunc = nil
  end,
})
--
-- vim.api.nvim_create_autocmd("filetype", {
--   pattern = "netrw",
--   desc = "Better mappings for netrw",
--   callback = function()
--     local bind = function(lhs, rhs)
--       vim.keymap.set("n", lhs, rhs, { remap = true, buffer = true })
--     end
--
--     bind("l", "<cr>")
--     bind("h", "-")
--   end,
-- })
