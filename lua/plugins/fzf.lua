return {
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "FzfLua",
    keys = {
      { "<leader>:", "<cmd>FzfLua command_history<cr>", desc = "Command History" },
      { "<leader>ca", "<cmd>FzfLua lsp_code_actions<cr>", desc = "Code actions" },

      -- find
      { "<leader>fr", "<cmd>FzfLua old_files<cr>", desc = "Recent" },
      { "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
      { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find Files" },
      { "<leader>fR", "<cmd>FzfLua resume<cr>", desc = "Resume" },

      -- goto
      { "<leader>gd", "<cmd>FzfLua lsp_definitions<cr>", desc = "Definitions" },
      { "<leader>gD", "<cmd>FzfLua lsp_declarations<cr>", desc = "Declarations" },
      { "<leader>gi", "<cmd>FzfLua lsp_implementations<cr>", desc = "Implementations" },
      { "<leader>gr", "<cmd>FzfLua lsp_references<cr>", desc = "References" },
      { "<leader>gt", "<cmd>FzfLua lsp_typedefs<cr>", desc = "Type definition" },
      { "<leader>gy", "<cmd>FzfLua lsp_typedefs<cr>", desc = "Type definition" },

      -- Git
      { "<leader>Gc", "<cmd>FzfLua git_commits<cr>", desc = "commits" },
      { "<leader>Gs", "<cmd>FzfLua git_status<cr>", desc = "status" },
      { "<leader>Gf", "<cmd>FzfLua git_files<cr>", desc = "Git files" },
      { "<leader>Gb", "<cmd>FzfLua git_branches<cr>", desc = "Git branches" },

      -- search
      { "<leader>sb", "<cmd>FzfLua grep_curbuf<cr>", desc = "Fuzzy grep in buffer" }, -- goated
      { "<leader>sD", "<cmd>FzfLua diagnostics_workspace<cr>", desc = "Workspace diagnostics" },
      { "<leader>sC", "<cmd>FzfLua commands<cr>", desc = "Commands" },
      { "<leader>sD", "<cmd>FzfLua diagnostics_workspace<cr>", desc = "Workspace diagnostics" },
      { "<leader>sW", "<cmd>FzfLua grep_cWORD<cr>", desc = "Grep current WORD" },
      { "<leader>sc", "<cmd>FzfLua command_history<cr>", desc = "Command History" },
      { "<leader>sd", "<cmd>FzfLua diagnostics_document<cr>", desc = "Document diagnostics" },
      { "<leader>sg", "<cmd>FzfLua grep_project<cr>", desc = "Fuzzy grep" },
      { "<leader>sh", "<cmd>FzfLua help_tags<cr>", desc = "Help Pages" },
      { "<leader>sk", "<cmd>FzfLua keymaps<cr>", desc = "Key Maps" },
      { "<leader>sm", "<cmd>FzfLua marks<cr>", desc = "Marks" },
      { "<leader>sw", "<cmd>FzfLua grep_cword<cr>", desc = "Grep current word" },
      { "<leader>sR", "<cmd>FzfLua resume<cr>", desc = "Resume fzf-lua" },
      { '<leader>s"', "<cmd>FzfLua registers<cr>", desc = "Registers" },
    },
  },
}
