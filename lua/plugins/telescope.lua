return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        mappings = {
          n = {
            ["d"] = require("telescope.actions").delete_buffer,
          },
        },
      },
    },
    keys = {
      { "<leader>gwl", "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<cr>" },
      { "<leader>gwc", "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>" },
    },
    -- keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
  },
}
