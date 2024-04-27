return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "solidity" })
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "nomicfoundation-solidity-language-server",
      },
    },
  },
  {
    -- FIXME: Kinda works but could be better.
    -- Reference: https://wizzardhat.com/solidity-lsp-neovim-setup/
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        solidity_ls_nomicfoundation = {
          cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
          filetypes = { "solidity" },
          root_dir = require("lspconfig.util").find_git_ancestor,
          single_file_support = true,
        },
      },
    },
  },
}
