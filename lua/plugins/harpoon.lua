return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    depedencies = { "nvim-lua/plenary.nvim" },
    lazy = true,
    keys = function()
      local harpoon = require("harpoon")

      -- REQUIRED
      harpoon:setup()
      -- REQUIRED

      return {
        {
          "<leader>a",
          function()
            harpoon:list():add()
          end,
        },
        {
          "<C-e>",
          function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
          end,
        },

        {
          "<C-h>",
          function()
            harpoon:list():select(1)
          end,
        },
        {
          "<C-j>",
          function()
            harpoon:list():select(2)
          end,
        },
        {
          "<C-k>",
          function()
            harpoon:list():select(3)
          end,
        },
        {
          "<C-l>",
          function()
            harpoon:list():select(4)
          end,
        },

        -- Toggle previous & next buffers stored within Harpoon list
        {
          "<C-S-P>",
          function()
            harpoon:list():prev()
          end,
        },
        {
          "<C-S-N>",
          function()
            harpoon:list():next()
          end,
        },
      }
    end,
  },
}
