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
  {
    "mfussenegger/nvim-dap",
    -- Switch <leader>dO and <leader>do as I find it more common
    -- to step over compared to stepping out
    keys = {
      {
        "<leader>dO",
        function()
          require("dap").step_out()
        end,
        desc = "Step Out",
      },
      {
        "<leader>do",
        function()
          require("dap").step_over()
        end,
        desc = "Step Over",
      },
    },
  },
}
