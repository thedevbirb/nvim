return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Disable them by default, toggle them with <leader>uh
      inlay_hints = { enabled = false },
      setup = {
        -- According to :h rustaceanvim.mason. To add rust-analyzer use:
        -- ```shell
        -- rustup component add rust-analyzer
        -- ```
        rust_analyzer = function()
          return true
        end,
      },
    },
  },
}
