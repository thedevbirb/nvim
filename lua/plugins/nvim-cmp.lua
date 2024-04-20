local cmp = require("cmp")

return {
  {
    "hrsh7th/nvim-cmp",
    opts = {
      -- Ovverride some mappings
      mapping = cmp.mapping.preset.insert({
        -- LazyVim defaults
        ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<S-CR>"] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.

        -- My mappings
        -- Use <C-y> to confirm the selection instead
        ["<CR>"] = function(fallback)
          cmp.abort()
          -- Fallback to the default behavior of the Enter key
          fallback()
        end,
      }),
    },
  },
}
