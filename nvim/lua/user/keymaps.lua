vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Filetree
vim.keymap.set('n', '<Leader>n', ':NvimTreeFindFileToggle<CR>')

-- Resize with arrows
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>')
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>')
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>')

-- Reselect visual selection after indenting
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')

-- Jump between buffers
vim.keymap.set('n', '<Leader><Tab>', ':bn<CR>')
vim.keymap.set('n', '<Leader><S-Tab>', ':bp<CR>')

-- Telescope
vim.keymap.set('n', '<Leader>ff', '<cmd>Telescope find_files<CR>')
vim.keymap.set('n', '<Leader>bf', '<cmd>Telescope buffers<CR>')

-- More lsp specific keymaps at ./plugins/lspconfig.lua
