-- a easier to manage zenmode. I just want a centered text!
return {
  {
    "shortcuts/no-neck-pain.nvim",
    enabled = false,
    keys = { { "<leader>;", "<cmd>NoNeckPain<cr>" } },
    opts = {
      width = 120,
    },
  },
}
