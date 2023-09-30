return {
  {
    "nvim-telescope/telescope.nvim",
    lazy = true,
    keys = function()
      return {
        {
          "<leader>gwl",
          "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<cr>",
          desc = "Git worktree list",
        },
        {
          "<leader>gwc",
          "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>",
          desc = "Git worktree create",
        },
      }
    end, -- disable all keymaps --> fzf-lua instead
  },
}
