local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local on_attach = function(client, bufnr)
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<Leader>dj', vim.diagnostic.goto_next, bufopts)
  vim.keymap.set('n', '<Leader>dk', vim.diagnostic.goto_prev, bufopts)
  vim.keymap.set('n', '<Leader>dl', '<cmd>Telescope diagnostics<CR>', bufopts)
end

require('lspconfig').pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
