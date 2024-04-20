-- Ensure some LSP or formatters are installed
return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "bash-language-server",
        "clangd",
        "gopls",
        "json-lsp",
        "lua-language-server",
        "nil",
        "prettierd",
        "rust-analyzer",
        "shfmt",
        "stylua",
        "taplo",
        "typescript-language-server",
        "zls",
      },
    },
  },
}
