vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Resize with arrows
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>')
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>')
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>')

-- Reselect visual selection after indenting
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')

-- Move text up and down
vim.keymap.set('i', '<A-k>', '<Esc>:move .-2<CR>==gi')
vim.keymap.set('i', '<A-j>', '<Esc>:move .+1<CR>==gi')
vim.keymap.set('x', '<A-k>', ":move '<-2<CR>gv-gv")
vim.keymap.set('x', '<A-j>', ":move '>+1<CR>gv-gv")

-- Buffers
vim.keymap.set('n', '<Leader><Tab>', ':bn<CR>')
vim.keymap.set('n', '<Leader><S-Tab>', ':bp<CR>')

vim.keymap.set('n', '<A-d>', ':bdelete<CR>')
vim.keymap.set('i', '<A-q>', '<Esc>:q<CR>')
vim.keymap.set('i', '<A-w>', '<Esc>:w<CR>')
vim.keymap.set('i', '<A-x>', '<Esc>:x<CR>')
vim.keymap.set('n', '<A-q>', ':q<CR>')
vim.keymap.set('n', '<A-w>', ':w<CR>')
vim.keymap.set('n', '<A-x>', ':x<CR>')

-- Paste replace visual selection without copying it
vim.keymap.set('v', 'p', '"_dP')

-- Filetree
vim.keymap.set('n', '<Leader>n', ':NvimTreeFindFileToggle<CR>')

-- Telescope
vim.keymap.set('n', '<Leader>fb', '<cmd>Telescope buffers<CR>')
vim.keymap.set('n', '<Leader>ff', '<cmd>Telescope find_files<CR>')
vim.keymap.set('n', '<Leader>fr', '<cmd>Telescope oldfiles<CR>')

-- More lsp specific keymaps at ./plugins/lspconfig.lua
