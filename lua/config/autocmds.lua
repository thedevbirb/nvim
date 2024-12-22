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

vim.api.nvim_create_autocmd("filetype", {
  pattern = "markdown",
  callback = function()
    vim.api.nvim_set_option_value("textwidth", 80, { scope = "local" })
  end,
})

vim.api.nvim_create_autocmd("filetype", {
  pattern = "starlark",
  callback = function()
    vim.lsp.start({
      name = "starlark-rust",
      cmd = { "/Users/birb/.local/share/nvim/mason/packages/starlark-rust/bin/starlark", "--lsp" },
      root_dir = vim.fs.root(0, { ".git", "main.star" }),
    })
    vim.lsp.start({
      name = "kurtosis",
      cmd = { "/Users/birb/oss/vscode-kurtosis_kurtosis-tech/starlark-lsp/cmd/starlark-lsp/starlark-lsp", "start" },
      root_dir = vim.fs.root(0, { ".git", "main.star" }),
    })
  end,
})
