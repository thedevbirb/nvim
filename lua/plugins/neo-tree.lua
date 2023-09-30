return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        mappings = {
          ["l"] = "open",
          ["h"] = "close_node",
        },
      },
    },
    -- always start from root
    keys = {
      { "<leader>e", "<leader>fE", desc = "Explorer NeoTree (root dir)", remap = true },
    },
  },
}
