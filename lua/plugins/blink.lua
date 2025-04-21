return {
  {
    "saghen/blink.cmp",
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = {
        -- Don't use <CR> to accept, only <C-y>.
        ["<CR>"] = { "fallback" },
      },
      -- Reference: <https://codecompanion.olimorris.dev/installation.html#completion>
      sources = {
        per_filetype = {
          codecompanion = { "codecompanion" },
        },
      },
    },
  },
}
