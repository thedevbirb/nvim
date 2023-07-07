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
  },
}
