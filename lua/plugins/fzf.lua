return {
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "FzfLua",
    keys = {
      -- Git
      { "<leader>Gf", "<cmd>FzfLua git_files<cr>", desc = "Git files" },
      { "<leader>Gb", "<cmd>FzfLua git_branches<cr>", desc = "Git branches" },
    },
  },
}
