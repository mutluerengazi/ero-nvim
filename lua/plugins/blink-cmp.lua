return {
  {
    "saghen/blink.cmp",
    event = "InsertEnter",
    dependencies = {
      "L3MON4D3/LuaSnip",
      "rafamadriz/friendly-snippets",
    },
    config = function()
      local blink = require("blink")
      local luasnip = require("luasnip")

      -- Load friendly-snippets
      require("luasnip.loaders.from_vscode").lazy_load()

      blink.setup({
        -- Enable snippet support
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        -- Configure completion behavior
        completion = {
          completeopt = "menu,menuone,noinsert",
        },
        -- Configure key mappings
        mapping = {
          -- Select next/previous item
          ["<C-n>"] = blink.mapping.select_next_item(),
          ["<C-p>"] = blink.mapping.select_prev_item(),
          -- Scroll documentation
          ["<C-b>"] = blink.mapping.scroll_docs(-4),
          ["<C-f>"] = blink.mapping.scroll_docs(4),
          -- Accept completion
          ["<C-y>"] = blink.mapping.confirm({ select = true }),
          -- Trigger completion manually
          ["<C-Space>"] = blink.mapping.complete(),
          -- Snippet navigation
          ["<C-l>"] = blink.mapping(function()
            if luasnip.expand_or_locally_jumpable() then
              luasnip.expand_or_jump()
            end
          end, { "i", "s" }),
          ["<C-h>"] = blink.mapping(function()
            if luasnip.locally_jumpable(-1) then
              luasnip.jump(-1)
            end
          end, { "i", "s" }),
        },
        -- Configure sources
        sources = {
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "path" },
        },
      })
    end,
  },
} 