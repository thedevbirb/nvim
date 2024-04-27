-- FIXME: not working
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        starpls = {
          cmd = { "starpls" },
          filetypes = { "bzl", "star" },
          root_dir = require("lspconfig.util").find_git_ancestor,
        },
      },
    },
  },
}
