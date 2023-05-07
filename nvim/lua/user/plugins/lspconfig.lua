local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

local on_attach = function(client, bufnr)
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, bufopts)
  -- vim.keymap.set('n', '<Leader>dj', vim.diagnostic.goto_next, bufopts)
  -- vim.keymap.set('n', '<Leader>dk', vim.diagnostic.goto_prev, bufopts)
  vim.keymap.set('n', '<Leader>fd', '<cmd>Telescope diagnostics<CR>', bufopts)
end

require('lspconfig').pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lspconfig').tailwindcss.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "html", "css", "javascript", "php", "markdown", "htmldjango",},
}

require('lspconfig').bashls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

--[[
require('lspconfig').tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require('lspconfig').psalm.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}--]]
