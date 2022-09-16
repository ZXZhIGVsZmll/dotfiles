local cmp = require('cmp')
local luasnip = require('luasnip')
local cmp_autopairs = require('nvim-autopairs.completion.cmp')

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    -- Super-tab like mapping start
    -- ['<Tab>'] = cmp.mapping(function(fallback)
    --     if cmp.visible() then
    --         cmp.select_next_item()
    --     elseif luasnip.expand_or_jumpable() then
    --         luasnip.expand_or_jump()
    --     elseif has_words_before() then
    --         cmp.complete()
    --     else
    --         fallback()
    --     end
    -- end, { "i", "s" }),
    -- ['<S-Tab>'] = cmp.mapping(function(fallback)
    --     if cmp.visible() then
    --         cmp.select_prev_item()
    --     elseif luasnip.jumpable(-1) then
    --         luasnip.jump(-1)
    --     else
    --         fallback()
    --     end
    -- end, { "i", "s" }),
    -- Super-tab like mapping end
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'luasnip' },
    { name = 'path' },
  })
})

cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)
