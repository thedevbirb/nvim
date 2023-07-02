-- Adding more parsers as ensure_installed

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "prisma",
      },
    },
  },
}
