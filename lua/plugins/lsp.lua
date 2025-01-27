return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Disable them by default, toggle them with <leader>uh
      inlay_hints = { enabled = false },
      -- according to rustaceanvim setup, we should disable rust-analyzer setup
      -- from mason so you can run different versions of rust-analyzer
      -- depending on the toolchain if a certain version is missing then
      -- install with rustup <toolchain> component add rust-analyzer
      -- setup = {
      --   rust_analyzer = function()
      --     return true
      --   end,
      -- },
    },
  },
  {
    "idris-community/idris2-nvim",
    config = true,
    ft = "idris2",
  },
}
