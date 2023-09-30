return {
  {
    "ThePrimeagen/git-worktree.nvim",
    lazy = true,
    config = function()
      require("telescope").load_extension("git_worktree")
    end,
  },
}
