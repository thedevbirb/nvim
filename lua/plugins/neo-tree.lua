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
  },
}
