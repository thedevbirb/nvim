return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      -- LSP Server settings
      ---@type lspconfig.options
      ---@diagnostic disable:missing-fields since we are extending the configuration
      servers = {
        clangd = {
          -- Fix encoding issues with clangd.
          -- https://www.reddit.com/r/neovim/comments/12qbcua/multiple_different_client_offset_encodings/
          cmd = {
            "clangd",
            "--offset-encoding=utf-16",
          },
        },
      },
    },
  },
}
