-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
require('nvim-tree').setup{
  sync_root_with_cwd = true,
}
