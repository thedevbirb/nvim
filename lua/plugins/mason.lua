-- Ensure some LSP or formatters are installed
return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "bash-language-server",
        "gopls",
        "json-lsp",
        "lua-language-server",
        "nil",
        "prettierd",
        "shfmt",
        "stylua",
        "taplo",
        "typescript-language-server",
        "zls",
      },
    },
  },
}
