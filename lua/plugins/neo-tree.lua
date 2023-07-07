return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    config = function()
      require("neo-tree").setup({
        window = {
          mappings = {
            ["l"] = "open",
            ["h"] = "close_node",
          },
        },
      })
    end,
    keys = { { "<leader>e", "<leader>E", remap = true }, { "<leader>fe", "<leader>fE", remap = true } },
  },
}
