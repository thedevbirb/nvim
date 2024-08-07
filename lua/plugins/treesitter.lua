-- Adding more parsers as ensure_installed
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "c",
        "go",
        "html",
        "javascript",
        "json",
        "just",
        "lua",
        "luadoc",
        "luap",
        "markdown",
        "markdown_inline",
        "prisma",
        "python",
        "query",
        "regex",
        "solidity",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      },
    },
  },
  {
    -- Show function context
    "nvim-treesitter/nvim-treesitter-context",
  },
}
