return {
  {
    "rcarriga/nvim-dap-ui",
    keys = {
      {
        "<leader>dR",
        function()
          require("dapui").open({ reset = true })
        end,
        desc = "Re-open DAP UI with reset buffers",
      },
    },
  },
}
